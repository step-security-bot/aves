package deckers.thibault.aves.utils

import android.content.Context
import android.util.Log
import deckers.thibault.aves.utils.ContextUtils.runOnUiThread
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.embedding.engine.loader.FlutterLoader
import io.flutter.view.FlutterCallbackInformation

object FlutterUtils {
    private val LOG_TAG = LogUtils.createTag<FlutterUtils>()

    suspend fun initFlutterEngine(context: Context, sharedPreferencesKey: String, callbackHandleKey: String, engineSetter: (engine: FlutterEngine) -> Unit) {
        val callbackHandle = context.getSharedPreferences(sharedPreferencesKey, Context.MODE_PRIVATE).getLong(callbackHandleKey, 0)
        if (callbackHandle == 0L) {
            Log.e(LOG_TAG, "failed to retrieve registered callback handle for sharedPreferencesKey=$sharedPreferencesKey callbackHandleKey=$callbackHandleKey")
            return
        }

        lateinit var flutterLoader: FlutterLoader
        context.runOnUiThread {
            // initialization must happen on the main thread
            flutterLoader = FlutterInjector.instance().flutterLoader().apply {
                startInitialization(context)
                ensureInitializationComplete(context, null)
            }
        }

        val callbackInfo = FlutterCallbackInformation.lookupCallbackInformation(callbackHandle)
        if (callbackInfo == null) {
            Log.e(LOG_TAG, "failed to find callback information for sharedPreferencesKey=$sharedPreferencesKey callbackHandleKey=$callbackHandleKey")
            return
        }

        val args = DartExecutor.DartCallback(
            context.assets,
            flutterLoader.findAppBundlePath(),
            callbackInfo
        )
        context.runOnUiThread {
            val engine = FlutterEngine(context).apply {
                dartExecutor.executeDartCallback(args)
            }
            engineSetter(engine)
        }
    }
}
import 'package:aves/ref/metadata/xmp.dart';

class XmpNamespaceView {
  // cf https://exiftool.org/TagNames/XMP.html
  static const Map<String, String> nsTitles = {
    XmpNamespaces.acdsee: 'ACDSee',
    XmpNamespaces.adsmlat: 'AdsML',
    XmpNamespaces.exifAux: 'Exif Aux',
    XmpNamespaces.avm: 'Astronomy Visualization',
    XmpNamespaces.camera: 'Pix4D Camera',
    XmpNamespaces.cc: 'Creative Commons',
    XmpNamespaces.crd: 'Camera Raw Defaults',
    XmpNamespaces.creatorAtom: 'After Effects',
    XmpNamespaces.crs: 'Camera Raw Settings',
    XmpNamespaces.crss: 'Camera Raw Saved Settings',
    XmpNamespaces.darktable: 'darktable',
    XmpNamespaces.dc: 'Dublin Core',
    XmpNamespaces.digiKam: 'digiKam',
    XmpNamespaces.droneDji: 'DJI Drone',
    XmpNamespaces.dwc: 'Darwin Core',
    XmpNamespaces.exif: 'Exif',
    XmpNamespaces.exifEx: 'Exif Ex',
    XmpNamespaces.fstop: 'F-Stop',
    XmpNamespaces.gAudio: 'Google Audio',
    XmpNamespaces.gCamera: 'Google Camera',
    XmpNamespaces.gContainer: 'Google Container',
    XmpNamespaces.gCreations: 'Google Creations',
    XmpNamespaces.gDepth: 'Google Depth',
    XmpNamespaces.gDevice: 'Google Device',
    XmpNamespaces.gFocus: 'Google Focus',
    XmpNamespaces.gImage: 'Google Image',
    XmpNamespaces.gPano: 'Google Panorama',
    XmpNamespaces.gSpherical: 'Google Spherical',
    XmpNamespaces.gettyImagesGift: 'Getty Images',
    XmpNamespaces.gimp210: 'GIMP 2.10',
    XmpNamespaces.gimpXmp: 'GIMP',
    XmpNamespaces.hdrgm: 'HDR Gain Map',
    XmpNamespaces.illustrator: 'Illustrator',
    XmpNamespaces.iptc4xmpCore: 'IPTC Core',
    XmpNamespaces.iptc4xmpExt: 'IPTC Extension',
    XmpNamespaces.lr: 'Lightroom',
    XmpNamespaces.mediapro: 'MediaPro',
    XmpNamespaces.miCamera: 'Mi Camera',
    XmpNamespaces.microsoftPhoto: 'Microsoft Photo 1.0',
    XmpNamespaces.mp1: 'Microsoft Photo 1.1',
    XmpNamespaces.mp: 'Microsoft Photo 1.2',
    XmpNamespaces.mwgrs: 'Regions',
    XmpNamespaces.nga: 'National Gallery of Art',
    XmpNamespaces.opMedia: 'OnePlus Media',
    XmpNamespaces.panorama: 'Panorama',
    XmpNamespaces.panoStudio: 'PanoramaStudio',
    XmpNamespaces.pdf: 'PDF',
    XmpNamespaces.pdfX: 'PDF/X',
    XmpNamespaces.photoMechanic: 'Photo Mechanic',
    XmpNamespaces.photoshop: 'Photoshop',
    XmpNamespaces.plus: 'PLUS',
    XmpNamespaces.pmtm: 'Photomatix',
    XmpNamespaces.tiff: 'TIFF',
    XmpNamespaces.xmp: 'Basic',
    XmpNamespaces.xmpBJ: 'Basic Job Ticket',
    XmpNamespaces.xmpDM: 'Dynamic Media',
    XmpNamespaces.xmpMM: 'Media Management',
    XmpNamespaces.xmpNote: 'Note',
    XmpNamespaces.xmpRights: 'Rights Management',
    XmpNamespaces.xmpTPg: 'Paged-Text',
    XmpNamespaces.xperiaCamera: 'Xperia Camera',
  };
}

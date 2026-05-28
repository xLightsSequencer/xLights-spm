// swift-tools-version: 5.9
// GENERATED FILE — do not edit by hand.
// Produced by the macOS Release workflow from:
//   xLights-macOS-dependencies/submodules/spm/Package.swift.in
// Placeholders below are filled in with the release-asset URLs and checksums
// for each tagged build.
import PackageDescription

let package = Package(
    name: "xLights-spm",
    platforms: [.macOS(.v12), .iOS(.v16)],
    products: [
        .library(name: "ANGLE", targets: ["ANGLE"]),
    ],
    targets: [
        // Header umbrella: re-exposes <EGL/...>, <GLES2/...>, <GLES3/...>, <KHR/...>
        // includes (the binary frameworks' own headers import as <libEGL/...>,
        // which is not how ANGLE code includes them).
        .target(
            name: "ANGLE",
            dependencies: [
                .target(name: "libEGL_macos",    condition: .when(platforms: [.macOS])),
                .target(name: "libGLESv2_macos", condition: .when(platforms: [.macOS])),
                .target(name: "libEGL_ios",      condition: .when(platforms: [.iOS])),
                .target(name: "libGLESv2_ios",   condition: .when(platforms: [.iOS])),
            ],
            path: "Sources/ANGLE",
            publicHeadersPath: "include"),

        // macOS: library (dylib) slices — the prebuilt dylib keeps its
        // @rpath/<name>.dylib id, which matches dylib-style embedding.
        .binaryTarget(name: "libEGL_macos",    url: "https://github.com/xLightsSequencer/xLights-macOS-dependencies/releases/download/xlights_2026.10/libEGL-macos.xcframework.zip",    checksum: "ea573da9aaf535299593cb145b0a5e31fa801d22ae6d9f4dcf338e6edf59bade"),
        .binaryTarget(name: "libGLESv2_macos", url: "https://github.com/xLightsSequencer/xLights-macOS-dependencies/releases/download/xlights_2026.10/libGLESv2-macos.xcframework.zip", checksum: "34e9281e6cb6cd32be36ce484606234797fa6df56cad628b3db3c8ea1ff680ce"),

        // iOS: framework slices (device + simulator).
        .binaryTarget(name: "libEGL_ios",      url: "https://github.com/xLightsSequencer/xLights-macOS-dependencies/releases/download/xlights_2026.10/libEGL-ios.xcframework.zip",      checksum: "11b8402bfc5052bade24b517e551d07dd9cf4585816855941358ae390c4970b7"),
        .binaryTarget(name: "libGLESv2_ios",   url: "https://github.com/xLightsSequencer/xLights-macOS-dependencies/releases/download/xlights_2026.10/libGLESv2-ios.xcframework.zip",   checksum: "93f753360f9a82cda679f56fea9d5d62cc5e35aa4576944892fe08a6a7505dbf"),
    ]
)

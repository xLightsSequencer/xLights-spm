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
        .binaryTarget(name: "libEGL_macos",    url: "https://github.com/xLightsSequencer/xLights-macOS-dependencies/releases/download/xlights_2026.11/libEGL-macos.xcframework.zip",    checksum: "a80f8549c764185e388dfe1a186f56a34c5172579453c1e3c70ea54e03f08b36"),
        .binaryTarget(name: "libGLESv2_macos", url: "https://github.com/xLightsSequencer/xLights-macOS-dependencies/releases/download/xlights_2026.11/libGLESv2-macos.xcframework.zip", checksum: "ba6f568edbf86c0f26e819a1dd3bfd2c537d12b30cc0f2d327bd2f96a0435179"),

        // iOS: framework slices (device + simulator).
        .binaryTarget(name: "libEGL_ios",      url: "https://github.com/xLightsSequencer/xLights-macOS-dependencies/releases/download/xlights_2026.11/libEGL-ios.xcframework.zip",      checksum: "261d6030203886e337624e4744c9b26ecce18f8bef1756a86b2f95fbf7f2a148"),
        .binaryTarget(name: "libGLESv2_ios",   url: "https://github.com/xLightsSequencer/xLights-macOS-dependencies/releases/download/xlights_2026.11/libGLESv2-ios.xcframework.zip",   checksum: "4444e97c0b7c01f85132dd2beb551ca75651e1ade303222d7a19c36e55972cc4"),
    ]
)

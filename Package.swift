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
        .binaryTarget(name: "libEGL_macos",    url: "https://github.com/xLightsSequencer/xLights-macOS-dependencies/releases/download/latest/libEGL-macos-57339d2.xcframework.zip",    checksum: "523980841e20f1974bdc8af70e97199b256dbeea8270d214322cb51b0cd53d4a"),
        .binaryTarget(name: "libGLESv2_macos", url: "https://github.com/xLightsSequencer/xLights-macOS-dependencies/releases/download/latest/libGLESv2-macos-57339d2.xcframework.zip", checksum: "67525418652cb84c93906f4e9a49fe0fe311fa0ec0da6572084d945ab9afaf03"),

        // iOS: framework slices (device + simulator).
        .binaryTarget(name: "libEGL_ios",      url: "https://github.com/xLightsSequencer/xLights-macOS-dependencies/releases/download/latest/libEGL-ios-57339d2.xcframework.zip",      checksum: "0b02170bd56f961a51505d16b25a2139150c70d74881af2bf716bd8c9e8b2400"),
        .binaryTarget(name: "libGLESv2_ios",   url: "https://github.com/xLightsSequencer/xLights-macOS-dependencies/releases/download/latest/libGLESv2-ios-57339d2.xcframework.zip",   checksum: "04d02829a0e2eb89611d0dcd45bcb12389c425d8e675214dc195306ff8923478"),
    ]
)

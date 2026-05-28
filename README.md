# xLights-spm

Swift Package Manager distribution of prebuilt native dependencies used by
[xLights](https://github.com/xLightsSequencer/xLights), built and published by
[xLights-macOS-dependencies](https://github.com/xLightsSequencer/xLights-macOS-dependencies).

This repo is **generated** by that repo's release workflow — `Package.swift` and
the vendored headers are overwritten on each tagged build. Don't edit by hand.

## Products

| Product | Contents |
|---------|----------|
| `ANGLE` | ANGLE (EGL + GLES2/3) — `libEGL` + `libGLESv2`, for macOS and iOS (device + simulator) |

## Usage

```swift
dependencies: [
    .package(url: "https://github.com/xLightsSequencer/xLights-spm", from: "2026.10.0"),
],
targets: [
    .target(name: "YourTarget", dependencies: [
        .product(name: "ANGLE", package: "xLights-spm"),
    ]),
]
```

Then include ANGLE headers the usual way:

```c
#include <EGL/egl.h>
#include <GLES2/gl2.h>
```

The right binary slice is linked automatically per platform (a macOS dylib
slice on macOS, the device/simulator framework slices on iOS).

## Versioning

Tags mirror the dependencies build tag: `xlights_2026.10` → **`2026.10.0`**.
All products share one version, matching how the upstream deps are built and
tagged as a unit.

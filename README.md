# PopcornTorrent for tvOS

Torrent client for tvOS implemented with `libtorrent`.

## Deploying a new version to CocoaPods



## Building static libraries

PopcornTorrent is distributed using CocoaPods and it has internal static libraries as dependencies in `Libtorrent` *(static library)*. These static libraries can be build using the `build.sh` script in the root directory:

```bash
sh build.sh -b=NO # Without bitcode support run build script with -b/--bitcode=NO|YES flag
sh build.sh -p=device # Only for specefied platform run build script with -p/--platform=all|device|simulator
sh build.sh -c # For cleaning buid directory run script
sh build.sh -p=tvosdevice # Build for tvOS
sh build.sh -p=tvosdevice # Build for tvOS (Device)
sh build.sh -p=tvossimulator # Build for tvOS (Simulator)
sh build.sh -p=tvosall # Build for tvOS (Simulator/Device)
```

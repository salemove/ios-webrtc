# Glia WebRTC library

## Prerequisite

In order to build the project, [Depot tools](https://commondatastorage.googleapis.com/chrome-infra-docs/flat/depot_tools/docs/html/depot_tools_tutorial.html#_setting_up) are required to be exported to PATH

### Flow

After checking out repository make sure you run `gcclient sync` as described [here](https://webrtc.org/native-code/ios/)


### Generating development ready library with Bitcode

Run the command `python build_ios_libs.py --bitcode` inside the src/tools_webrtc/ios that will generate the FAT framework. This library contains slices both for simulator and real device but cannot be [submitted to app store](https://webrtc.org/native-code/ios/)

The unwated architecture can be stripped [using lipo and script](http://ikennd.ac/blog/2015/02/stripping-unwanted-architectures-from-dynamic-libraries-in-xcode/)


### Generate production ready library with Bitcode enabled

Run the command `python build_ios_libs.py --bitcode --arch {arm64,x64}` inside the src/tools_webrtc/ios that will generate the FAT framework.

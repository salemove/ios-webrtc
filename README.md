# Glia WebRTC library

## Cocoapods

Cocoapods has multiple subspecs available:

- `release` uses the version of the library that is built for distribution to AppStore that does not use bitcode

- `bitcode` uses the version of the libray with bitcode enabled

## Manual

In order to build the project, [Depot tools](https://commondatastorage.googleapis.com/chrome-infra-docs/flat/depot_tools/docs/html/depot_tools_tutorial.html#_setting_up) are required to be exported to PATH.

The repo is using git lfs to store large files so it should be [installed](https://help.github.com/en/articles/installing-git-large-file-storage) prior to fetching the repo.

### Flow

After checking out repository make sure you run `gcclient sync` as described [here](https://webrtc.org/native-code/ios/).

### Generating release library

Run the command `python build_ios_libs.py` inside the src/tools_webrtc/ios that will generate the FAT framework. 

### Generate release library with Bitcode enabled

Run the command `python build_ios_libs.py --bitcode` inside the src/tools_webrtc/ios that will generate the FAT framework. 

### Submission

Generated library contains slices both for simulator and real device but cannot be [submitted to app store](https://webrtc.org/native-code/ios/)

The unwated architecture can be stripped [using lipo and script](http://ikennd.ac/blog/2015/02/stripping-unwanted-architectures-from-dynamic-libraries-in-xcode/)

### Fastlane

You can use fastlane to generate the development and production libraries. Make sure to run `bundle install` before to get all the required gems.

### Troubleshoot

What to do if the framework is not present after doing `pod install`?

If you have run pod install before installing git lsf you will need to clear you cocoapods cache with `rm -rf /Users/$USER/Library/Caches/CocoaPods` and your pods and podfile.lock and run podfile install again
https://github.com/CocoaPods/CocoaPods/issues/4801
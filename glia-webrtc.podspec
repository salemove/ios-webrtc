Pod::Spec.new do |s|
  s.name         = "glia-webrtc"
  s.version      = "0.0.1"
  s.summary      = "WebRTC SDK for iOS build with bitcode"
  s.description  = <<-DESC
    WebRTC is a free, open project that provides browsers and mobile
    applications with Real-Time Communications (RTC) capabilities via simple
    APIs.
                   DESC
  s.homepage     = "http://webrtc.org/"
  s.source       = { :git => 'git@github.com:salemove/glia-webrtc.git', :tag => s.version.to_s }
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Glia' => 'mobile@glia.com' }

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.2'

  s.source_files = "out_ios_libs/WebRTC.framework/Headers/**/*.h"
  s.public_header_files = "out_ios_libs/WebRTC.framework/Headers/**/*.h"
  s.vendored_frameworks = "out_ios_libs/WebRTC.framework"
end
Pod::Spec.new do |s|
  s.name         = "glia-webrtc"
  s.version      = "0.0.2"
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
  s.default_subspecs = 'release'

  s.subspec 'release' do |rsp|
    rsp.source_files = "output/release/WebRTC.framework/Headers/**/*.h"
    rsp.public_header_files = "output/release/WebRTC.framework/Headers/**/*.h"
    rsp.vendored_frameworks = "output/release/WebRTC.framework"
  end

  s.subspec 'bitcode' do |bsp|
    bsp.source_files = "output/bitcode/WebRTC.framework/Headers/**/*.h"
    bsp.public_header_files = "output/bitcode/WebRTC.framework/Headers/**/*.h"
    bsp.vendored_frameworks = "output/bitcode/WebRTC.framework"
  end
end
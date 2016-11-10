Pod::Spec.new do |s|

  s.name         = "AI-KurentoToolbox"
  s.version      = "1.0.1"
  s.summary      = "Kurento Toolbox for iOS modified by Ambient-Innovation"
  s.description  = <<-DESC
                   Kurento Toolbox for iOS provides a set of basic components that have been found useful during the native development of the WebRTC applications with Kurento.
                   DESC
  s.homepage     = "https://github.com/ambient-innovation/Kurento-iOS"

  s.license      = { :type => "GNU LGPL 2.1", :file => "LICENSE" }

  s.author = { "Jan Buerling" => "jan.buerling@ambient-innovation.com" }
  s.platform = :ios, "8.3"

  s.source = { :git => "https://github.com/ambient-innovation/Kurento-iOS.git", :tag => "v#{s.version}" }

  s.default_subspecs = 'Default'

  s.dependency 'WebRTC'

  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/AI-KurentoToolbox"' }

  s.subspec 'Default' do |ss|
    ss.source_files = 'Classes/KurentoToolbox.h'
    ss.dependency 'AI-KurentoToolbox/WebRTC'
    ss.dependency 'AI-KurentoToolbox/JSON-RPC'
    ss.dependency 'AI-KurentoToolbox/Room'
    ss.dependency 'AI-KurentoToolbox/Tree'
  end

  s.subspec 'WebRTC' do |ss|
    ss.source_files = 'Classes/WebRTC/**/*.{h,m}'
    ss.public_header_files = 'Classes/WebRTC/*.h'
    ss.dependency 'AI-KurentoToolbox/Utils'
  end

  s.subspec 'JSON-RPC' do |ss|
    ss.source_files = 'Classes/JSON-RPC/**/*.{h,m}'
    ss.public_header_files = 'Classes/JSON-RPC/*.h'
    ss.dependency 'SocketRocket', '~> 0.4.1'
    ss.dependency 'SBJson', '~> 4.0.2'
    ss.dependency 'AI-KurentoToolbox/Utils'
  end
  
  s.subspec 'Room' do |ss|
      ss.source_files = 'Classes/Room/**/*.{h,m}'
      ss.public_header_files = 'Classes/Room/*.h'
      ss.dependency 'AI-KurentoToolbox/JSON-RPC'
      ss.dependency 'AI-KurentoToolbox/WebRTC'
      ss.dependency 'AI-KurentoToolbox/Utils'
  end

  s.subspec 'Tree' do |ss|
      ss.source_files = 'Classes/Tree/**/*.{h,m}'
      ss.public_header_files = 'Classes/Tree/*.h'
      ss.dependency 'AI-KurentoToolbox/JSON-RPC'
      ss.dependency 'AI-KurentoToolbox/WebRTC'
      ss.dependency 'AI-KurentoToolbox/Utils'
  end

  s.subspec 'Utils' do |ss|
      ss.source_files = 'Classes/Utils/*.{h,m}'
      ss.public_header_files = 'Classes/Utils/*.h'
	  ss.dependency 'CocoaLumberjack', '~> 2.2.0'
  end
  
  s.requires_arc = true

end

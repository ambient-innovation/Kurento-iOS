source 'https://github.com/artsy/Specs.git'
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '8.0'

workspace 'Kurento-iOS'

def common_target_pods
    pod 'CocoaLumberjack', :configurations => ['Debug']
    pod 'SBJson', '~> 4.0.2'
    pod 'SocketRocket', '~> 0.4.2'
end

target 'KurentoToolbox-Static' do
    xcodeproj 'Kurento-iOS'
    common_target_pods
end

target 'KurentoToolbox-Tests' do
    xcodeproj 'Kurento-iOS'
    pod 'AI-KurentoToolbox', :git => "https://github.com/ambient-innovation/Kurento-iOS.git"
end

target 'KurentoToolboxDemo' do
    xcodeproj 'KurentoToolboxDemo/KurentoToolboxDemo'
    pod 'AI-KurentoToolbox', :git => "https://github.com/ambient-innovation/Kurento-iOS.git"
    pod 'MBProgressHUD', '~> 0.9.2'
    pod 'Reachability', '~> 3.2'
    pod 'DGActivityIndicatorView'
    pod 'Masonry', '~> 0.6.4'
end



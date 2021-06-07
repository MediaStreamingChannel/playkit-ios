suffix = '.0000'   # Dev mode
# suffix = ''       # Release

Pod::Spec.new do |s|

s.name              = 'PlayKit.Fork'
s.version           = '3.20.1' + suffix + '.beta1'
s.summary           = 'PlayKit: Kaltura Mobile Player SDK - iOS'
s.homepage          = 'https://github.com/MediaStreamingChannel/playkit-ios.git'
s.license           = { :type => 'AGPLv3', :text => 'AGPLv3' }
s.author            = { 'Kaltura' => 'kaushalyuvi@gmail.com' }
s.source            = { :git => 'https://github.com/MediaStreamingChannel/playkit-ios.git', :tag => 'stg/v3.20.1_ima_focusIssue' }
s.swift_version     = '5.0'

s.ios.deployment_target = '9.0'
s.tvos.deployment_target = '9.0'

s.subspec 'Core' do |sp|
    sp.source_files = 'Classes/**/*'
    sp.dependency 'SwiftyJSON', '5.0.0'
    sp.dependency 'XCGLogger', '7.0.0'
    sp.dependency 'KalturaNetKit', '~> 1.4'
    sp.dependency 'PlayKitUtils', '~> 0.5'
end

s.default_subspec = 'Core'

end

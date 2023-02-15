platform :ios, '15.0'

target 'FlashChat' do
  use_frameworks!

  # Pods for FlashChat
  pod 'FirebaseAuth'
  pod 'FirebaseFirestore'
  pod 'IQKeyboardManagerSwift'
  
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
    end
  end
end


# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

target 'SustainableEarthApp' do
  use_frameworks!

  # Pods for SustainableEarthApp
  pod 'Firebase'
  pod 'Firebase/Analytics'
  pod 'Firebase/Auth'
  pod 'Firebase/Core'
  pod 'Firebase/Firestore'
  pod 'DropDown'
  pod 'Firebase/Storage'
  pod 'FirebaseUI/Storage'

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
    end
  end
end

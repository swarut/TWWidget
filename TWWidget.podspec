Pod::Spec.new do |s|
  s.name         = "TWWidget"
  s.version      = "0.1"
  s.summary      = "TWWidget is a widget library for Taskworld mobile app."
  s.homepage     = "https://github.com/swarut/TWWidget"

  s.license      = { :type => 'BSD', :file => 'LICENSE.md' }
  s.author       = { "Warut Surapat" => "s.warut@gmail.com" }
  s.source       = { :git => "https://github.com/FingertiP/FPLinearLayout.git", :tag => "0.3" }
  s.source_files = 'FPLinearLayout'

  s.requires_arc = true
  s.ios.deployment_target = '5.0'
end

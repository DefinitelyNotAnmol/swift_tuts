Pod::Spec.new do |s|
  s.name             = 'BubbleTabBar'
  s.swift_version = '4.2'
  s.version          = '0.8.3'
  s.summary          = 'One another nice animated tabbar'
  s.homepage         = 'https://github.com/Cuberto/bubble-icon-tabbar'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = 'MIT'
  s.author           = { 'askopin@gmail.com' =>  'askopin@gmail.com' }
  s.source           = { :git => 'https://github.com/Cuberto/bubble-icon-tabbar.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.3'
  s.source_files = 'BubbleTabBar/Classes/**/*'
end

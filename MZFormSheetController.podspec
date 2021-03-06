Pod::Spec.new do |s|
  s.name     = 'MZFormSheetController'
  s.version  = '3.0.3'
  s.license  = 'MIT'
  s.summary  = 'Provides an alternative to the native iOS UIModalPresentationFormSheet.'
  s.homepage = 'https://github.com/m1entus/MZFormSheetController'
  s.authors  = 'Michał Zaborowski'
  s.source   = { :git => 'https://github.com/m1entus/MZFormSheetController.git', :tag => s.version.to_s }
  s.default_subspec = 'Core'
  s.requires_arc = true

  s.dependency 'MZAppearance'

  s.subspec "Core" do |sp| 
    sp.source_files = 'MZFormSheetController/**/*.{h,m}'
  end

  s.subspec "SVProgressHUD" do |sp|
    sp.source_files = "MZFormSheetController+SVProgressHUD/*.{h,m}"
    sp.dependency 'SVProgressHUD'
    sp.dependency 'MZFormSheetController/Core'
  end

  s.platform = :ios, '6.1'
  s.frameworks = 'QuartzCore', 'Accelerate'
end

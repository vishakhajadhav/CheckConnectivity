Pod::Spec.new do |s|

  s.name         = "CheckConnectivity"

  s.version      = "1.0.2"

  s.summary      = "Checks Connectivity."

  s.description  = "Checks internet connection."

  s.homepage     = "https://github.com/"

  s.license      = "MIT"

  s.author             = "Kahuna"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/vishakhajadhav/CheckConnectivity.git", :tag => "1.0.2" }

  s.source_files  = "CheckConnectivity", "CheckConnectivity/**/*.{h,m,swift}"

  s.framework =  'SystemConfiguration'
  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '2.3',
  } 

end

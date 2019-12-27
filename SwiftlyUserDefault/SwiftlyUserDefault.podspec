Pod::Spec.new do |spec|

  spec.name         = "SwiftlyUserDefault"
  spec.version      = "0.0.1"
  spec.summary      = "This is such a SwiftylUserDefault framework"
  spec.homepage     = "https://github.com/jungseungyeo/SwiftlyUserDefault"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "linsaeng" => "duwjdtmd91@gmail.com" }
  spec.source       = { :git => "https://github.com/jungseungyeo/SwiftlyUserDefault.git", :tag => "#{spec.version}" }
  spec.source_files  = "SwiftlyUserDefault/**/*.swift"
  spec.swift_version = "5.0"
  spec.ios.deployment_target = "11.0"

end

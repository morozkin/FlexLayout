
Pod::Spec.new do |spec|
  spec.name         = "FlexLayout"
  spec.version      = "1.3.7"
  spec.summary      = "FlexLayout"
  spec.homepage     = "https://github.com/lucdion/FlexLayout.git"
  spec.license      = "MIT license"
  spec.author       = { "Luc Dion" => "luc_dion@yahoo.com" }
  
  spec.platform     = :ios, "8.0"
  spec.source       = { :git => "https://github.com/lucdion/FlexLayout.git", :tag => "#{spec.version}" }
  spec.pod_target_xcconfig = { "SWIFT_INCLUDE_PATHS" => "$(SRCROOT)/FlexLayout/Sources/YogaKit/*, $(SRCROOT)/FlexLayout/Sources/yoga/*" }
  spec.source_files = "Sources/**/*.{swift,h,m,mm,cpp,c}"
  spec.private_header_files = "Sources/yoga/{*}.h", "Sources/YogaKit/{*}.h"
  spec.preserve_paths = "Sources/yoga/module.modulemap", "Sources/YogaKit/module.modulemap"

  # Should match yoga_defs.bzl + BUCK configuration
  spec.compiler_flags = [
     '-fno-omit-frame-pointer',
     '-fexceptions',
     '-Wall',
     '-Werror',
     '-std=c++1y',
     '-fPIC'
  ]
end

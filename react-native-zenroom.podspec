# react-native-zenroom.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-zenroom"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-zenroom
                   DESC
  s.homepage     = "https://github.com/pasfranc/react-native-zenroom"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Pasquale Pio Francavilla" => "pasfranc@email.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/pasfranc/react-native-zenroom.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end


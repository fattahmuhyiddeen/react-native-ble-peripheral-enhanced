require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.swift_version = '4.0'
  s.source_files = "ios/**/*.{h,m,swift}"

  s.source       = { :git => "https://github.com/himelbrand/react-native-ble-peripheral.git", :tag => "v#{s.version}" }

  s.dependency 'React'
end

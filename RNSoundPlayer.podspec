require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name           = package['name']
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = "https://github.com/johnsonsu/react-native-sound-player"
  s.source         = { :git => "https://github.com/oleg-tsiupka/react-native-sound-player.git", :branch => "master" }
  s.source_files   = "ios/**/*.{h,m}"

  s.ios.deployment_target = "8.0"

  s.dependency "React"
end

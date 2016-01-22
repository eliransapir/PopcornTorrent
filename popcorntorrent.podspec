Pod::Spec.new do |s|
  s.name             = "PopcornTorrent"
  s.version          = "1.0.0"
  s.summary          = "Popcorn torrent client for PopcornTimeTV"
  s.homepage         = "https://github.com/PopcornTimeTV/PopcornTorrent"
  s.license          = 'MIT'
  s.author           = { "Popcorn" => "popcorn@time.io"}
  s.source           = { :git => "https://github.com/PopcornTimeTV/PopcornTorrent.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.tvos.deployment_target = '9.0'
  
  s.vendored_libraries = "output/UniversalTVOS/*.a"
  s.public_header_files = ["source/**/*.{h}", "include/**/*.{hpp}"]]
  s.source_files = ["source/**/*.{h,mm,m}", "include/**/*.{hpp}"]
  s.libraries = ["stdc++", "xml2"]
end
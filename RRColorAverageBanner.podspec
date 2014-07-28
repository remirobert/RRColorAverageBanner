Pod::Spec.new do |s|
  s.name             = "RRColorAveragebanner"
  s.version          = "0.1.0"
  s.summary          = "RRcolorAveragebanner."
  s.description      = <<-DESC
                        RRColorAveragebanner for UIImageView
                        DESC
  s.homepage         = "https://github.com/remirobert/RRColorAveragebanner"
  s.license          = 'MIT'
  s.author           = { "remirobert" => "remi.robert@epitech.eu" }
  s.source           = { :git => "https://github.com/remirobert/RRColorAveragebanner.git", :commit => "a560b930fbd0439ec600fdd863db84eec21853cb", :tag => 'v0.1.0' }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'RRColorAveragebanner/'

end

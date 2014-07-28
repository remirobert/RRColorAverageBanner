Pod::Spec.new do |s|
  s.name             = "RRColorAverageBanner"
  s.version          = "0.1"
  s.summary          = "RRcolorAverageBanner."
  s.description      = <<-DESC
                        RRColorAverageBanner for UIImageView
                        DESC
  s.homepage         = "https://github.com/remirobert/RRColorAverageBanner"
  s.license          = 'MIT'
  s.author           = { "remirobert" => "remi.robert@epitech.eu" }
  s.source           = { :git => "https://github.com/remirobert/RRColorAverageBanner.git", :commit => "a560b930fbd0439ec600fdd863db84eec21853cb", :tag => 'v0.1' }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'RRColorAverageBanner/'

end

Pod::Spec.new do |s|

  s.name         = "JWCommonLib"
  s.version      = "0.0.1"
  s.summary      = "library for managing useful codes and extension to use in all projects "

   s.description  = "library for managing useful codes and extension to use in all Xcode(swift) projects"

  s.homepage     = "http://whiz.ir"
  s.license      = "MIT"
  s.author             = { "amirfahmideh" => "amir.fahmideh@gmail.com" }
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/amirfahmideh/JWCommonLib.git", :tag => "#{s.version}" }
  s.source_files  = "JWCommonLib"
  s.exclude_files = "Classes/Exclude"
  s.swift_version = "4.1"
 end

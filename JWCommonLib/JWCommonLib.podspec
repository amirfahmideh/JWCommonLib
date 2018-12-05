Pod::Spec.new do |s|
  s.name         = "JWCommonLib"
  s.version      = "1.0.0"
  s.summary      = "library for managing useful codes and extension to use in all projects "

   s.description  = <<-DESC
library for managing useful codes and extension to use in all Xcode(swift) projects
DESC
  s.homepage     = "http://whiz.ir"
  s.license      = "Open"
  s.author       = { "amirfahmideh" => "amir.fahmideh@gmail.com" }
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/amirfahmideh/JWCommonLib.git", :tag => "#{s.version}" }
  s.source_files  = "JWCommonLib/**/*.swift"
  s.exclude_files = "Classes/Exclude"
  s.swift_version = "4.1"
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
 end

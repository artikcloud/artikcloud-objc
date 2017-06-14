#
# Be sure to run `pod lib lint ArtikCloud.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "ArtikCloud"
    s.version          = "2.1.0"

    s.summary          = "ARTIK Cloud API"
    s.description      = <<-DESC
                         ARTIK Cloud 2.1.0
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/artikcloud/artikcloud-objc"
    s.license      = "Proprietary"
    s.source       = { :git => "https://github.com/artikcloud/artikcloud-objc.git", :tag => "#{s.version}" }
    s.author       = { "Samsung ArtikCloud" => "developer@artik.cloud" }

    s.source_files = 'ArtikCloud/**/*.{m,h}'
    s.public_header_files = 'ArtikCloud/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.2'
    s.dependency 'ISO8601', '~> 0.6'
end


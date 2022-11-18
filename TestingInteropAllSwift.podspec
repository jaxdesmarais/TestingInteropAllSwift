Pod::Spec.new do |spec|
  spec.name         = "TestingInteropAllSwift"
  spec.version      = "0.0.1"
  spec.summary      = "A very cool Podspec"

  spec.description  = <<-DESC
                        A very cool Podspec with a long description
                   DESC

  spec.homepage     = "https://github.com/jaxdesmarais/TestingInteropAllSwift"

  spec.license      = "MIT"
  spec.author       = { "Jax DesMarais-Leder" => "email@address.com" }
  spec.source       = { :git => "https://github.com/jaxdesmarais/TestingInteropAllSwift", :tag => spec.version.to_s }
  spec.platform = :ios, "14.0"
  spec.swift_version = "5.7"

#  spec.default_subspecs = %w[House]

  spec.subspec "Cat" do |s|
    s.source_files = "Sources/Cat/*.swift"
    s.dependency "TestingInteropAllSwift/Dog"
  end

  spec.subspec "Dog" do |s|
    s.source_files = "Sources/Dog/*.swift"
  end

  spec.subspec "House" do |s|
    s.source_files = "Sources/House/*.{swift}"
    s.dependency "TestingInteropAllSwift/Cat"
  end

end
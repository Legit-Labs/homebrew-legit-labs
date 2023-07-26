
class Legitify < Formula
desc "Legitify - open source scm scanning tool by Legit Security"
homepage "https://github.com/Legit-Labs/legitify"

on_macos do
    if Hardware::CPU.intel?
    url "https://legitify.legitsecurity.com/0.2.8/darwin/amd64.tar.gz"
    sha256 "legitify_0.2.8_darwin_arm64.tar.gz"
    version "0.2.8"
    end 
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://legitify.legitsecurity.com/0.2.8/darwin/arm64.tar.gz"
    sha256 "9829c5913a127661ef1bbed02ae75be166f32a86cebb0699694a7cb8ae7846d4"
    version "0.2.8" 
    end
end

    def install
    bin.install "legitify"
    end
end

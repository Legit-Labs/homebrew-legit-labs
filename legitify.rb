
class Legitify < Formula
desc "Legitify - open source scm scanning tool by Legit Security"
homepage "https://github.com/Legit-Labs/legitify"

on_macos do
    if Hardware::CPU.intel?
    url "https://legitify.legitsecurity.com/v0.2.8/darwin/amd64.tar.gz"
    sha256 "12345intel"
    version "v0.2.8"
    end 
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://legitify.legitsecurity.com/v0.2.8/darwin/arm64.tar.gz"
    sha256 "12345arm"
    version "v0.2.8" 
    end
end

    def install
    bin.install "legitify"
    end
end

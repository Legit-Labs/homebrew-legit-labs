
class Legitify < Formula
desc "Legitify - open source scm scanning tool by Legit Security"
homepage "https://github.com/Legit-Labs/legitify"

on_macos do
    if Hardware::CPU.intel?
    url "https://github.com/Legit-Labs/legitify/releases/download/v0.2.33/legitify_0.2.6_darwin_amd64.tar.gz"
    sha256 "123456amd"
    version "v0.2.33"
    end 
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/Legit-Labs/legitify/releases/download/v0.2.33/legitify_0.2.6_darwin_arm64.tar.gz"
    sha256 "12345arm"
    version "v0.2.33" 
    end
end

    def install
    bin.install "legitify"
    end
end

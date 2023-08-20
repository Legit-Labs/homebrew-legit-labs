
class Legitify < Formula
    desc "Legitify - open source scm scanning tool by Legit Security"
    homepage "https://github.com/Legit-Labs/legitify"

    if Hardware::CPU.intel?
        url "https://legitify.legitsecurity.com/1.0.1/darwin/amd64.tar.gz"
        sha256 "bec5ca356681a29e659658a569472baef638503b74f67de4f391a620e5c6e284"
        version "1.0.1"
    end 
    if Hardware::CPU.arm?
        url "https://legitify.legitsecurity.com/1.0.1/darwin/arm64.tar.gz"
        sha256 "6d8e182cade90431cda7a9cd475b59219cea29ffced075505596a8970b759732"
        version "1.0.1" 
    end

    def install
        bin.install "legitify"
    end
end

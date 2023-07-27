
class Legitify < Formula
    desc "Legitify - open source scm scanning tool by Legit Security"
    homepage "https://github.com/Legit-Labs/legitify"
  
    if Hardware::CPU.intel?
        url "https://legitify.legitsecurity.com/0.2.8/darwin/amd64.tar.gz"
        sha256 "5d4ceef28dff4d80149c634fb4fc74e35c25bb3395b9ec4b090f53b445e5ddfa"
        version "0.2.8"
    end 
    if Hardware::CPU.arm?
        url "https://legitify.legitsecurity.com/0.2.8/darwin/arm64.tar.gz"
        sha256 "dccd1b83fb34c39d1a0668856bd38e95f0dc51d8ae4a51a96967888acd6865e1"
        version "0.2.8" 
    end
    
    def install
        bin.install "legitify"
    end
end

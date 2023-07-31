
class Legitify < Formula
    desc "Legitify - open source scm scanning tool by Legit Security"
    homepage "https://github.com/Legit-Labs/legitify"

    if Hardware::CPU.intel?
        url "https://legitify.legitsecurity.com/1.0.0/darwin/amd64.tar.gz"
        sha256 "879bc12660635af3a891c6d6a0380741da6c0a74fe99f0175a212f7160444c7d"
        version "1.0.0"
    end 
    if Hardware::CPU.arm?
        url "https://legitify.legitsecurity.com/1.0.0/darwin/arm64.tar.gz"
        sha256 "ab3ea36f0eb2394e825fab41fdf57bc02e2c7f4cff9214ddc24cddb8ce603ace"
        version "1.0.0" 
    end

    def install
        bin.install "legitify"
    end
end

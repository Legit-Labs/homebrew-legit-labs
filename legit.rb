# typed: false
# frozen_string_literal: true

class Legit < Formula
  desc "CLI tool for scanning code with Legit Security - secrets, SCA, and SAST"
  homepage "https://www.legitsecurity.com"
  version "1.0.71"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_darwin_arm64.tar.gz"
      sha256 "db204d18800b9845c5f34597c5d84f423d80956297e08faa7e9f67e1524c3fa6"
    else
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_darwin_amd64.tar.gz"
      sha256 "e55087364be9a5fb5307c79eff09bc5c686bdcaf9c562fe02c759f8cf94083d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_linux_arm64.tar.gz"
      sha256 "811a54d0e12491142e51fd6f7558fe5c84a567721a7ee6b4cdf53fd2e016b756"
    else
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_linux_amd64.tar.gz"
      sha256 "9406b402f4ce01853afe72170f08148c33ce9c9cae633a8652b60f2881fd2345"
    end
  end

  def install
    bin.install "legit"
  end

  test do
    assert_match "legit version", shell_output("#{bin}/legit version")
  end
end


# typed: false
# frozen_string_literal: true

class Legit < Formula
  desc "CLI tool for scanning code with Legit Security - secrets, SCA, and SAST"
  homepage "https://www.legitsecurity.com"
  version "1.0.76"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_darwin_arm64.tar.gz"
      sha256 "88cae01463cdd841bbbb68b126d003fa47baada09bc88040852050d5ade1d5a2"
    else
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_darwin_amd64.tar.gz"
      sha256 "9a4771a879d02ab96b5c4ab36b640f0d75a9d9e6fd3a90259d0f5b5f3b905dd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_linux_arm64.tar.gz"
      sha256 "8449c761530edc028afc7152b4cf6161bf6b7b35074330fbfd7f80166794e539"
    else
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_linux_amd64.tar.gz"
      sha256 "5e9dbb7f2e81081b94ffe890dc67f273dc640d644d2ace3edf03386ccbe8e82e"
    end
  end

  def install
    bin.install "legit"
  end

  test do
    assert_match "legit version", shell_output("#{bin}/legit version")
  end
end


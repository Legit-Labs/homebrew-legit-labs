# typed: false
# frozen_string_literal: true

class Legit < Formula
  desc "CLI tool for scanning code with Legit Security - secrets, SCA, and SAST"
  homepage "https://www.legitsecurity.com"
  version "1.0.84"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_darwin_arm64.tar.gz"
      sha256 "0b5ec1c0aabac3eab09aff3d68073cc1a3858da99f4070bdfef518d48c4a0f32"
    else
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_darwin_amd64.tar.gz"
      sha256 "43faa464c2db4d59eacc626dd00099d6f070d4304bbad95432cdeb3774ea1034"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_linux_arm64.tar.gz"
      sha256 "06784b15f2e9e2d984271c95c512452c5466e46e64a2332a461bb904e6295270"
    else
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_linux_amd64.tar.gz"
      sha256 "58d67590fdfeecba86224a7a8851f304a6886dd097b98b06ff1268c09ea88b2f"
    end
  end

  def install
    bin.install "legit"
  end

  test do
    assert_match "legit version", shell_output("#{bin}/legit version")
  end
end


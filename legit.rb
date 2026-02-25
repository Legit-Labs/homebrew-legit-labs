# typed: false
# frozen_string_literal: true

class Legit < Formula
  desc "CLI tool for scanning code with Legit Security - secrets, SCA, and SAST"
  homepage "https://www.legitsecurity.com"
  version "1.0.74"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_darwin_arm64.tar.gz"
      sha256 "a7b36b4a55c9b9648e76fae464d0b23335e2a5869e74af681950d8c69b0b5d65"
    else
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_darwin_amd64.tar.gz"
      sha256 "92a98cfb5d4cbd8e51b02dee82c6ea4949495d174e8e74bf792167c98d63d3d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_linux_arm64.tar.gz"
      sha256 "1a1a19dc83d56c44b587c32272e66394ff9b65e17d6f6b0347fe2aaf77ff5114"
    else
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_linux_amd64.tar.gz"
      sha256 "ee5f8416dedb5779c1798a0fc82c68c6f714141025b46721dd1fee53c7199d35"
    end
  end

  def install
    bin.install "legit"
  end

  test do
    assert_match "legit version", shell_output("#{bin}/legit version")
  end
end


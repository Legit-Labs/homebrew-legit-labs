# typed: false
# frozen_string_literal: true

class Legit < Formula
  desc "CLI tool for scanning code with Legit Security - secrets, SCA, and SAST"
  homepage "https://www.legitsecurity.com"
  version "1.0.63"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_darwin_arm64.tar.gz"
      sha256 "a0e80cfc8dd62276ec492a3bf66b9cea5b9ccccb83a6aa6884561dc4351597be"
    else
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_darwin_amd64.tar.gz"
      sha256 "440aa5f20796a56ef7bafa883a06a260fef2c3572cd21ecaa89ea990c5e73655"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_linux_arm64.tar.gz"
      sha256 "73108474a94a912eb7174e3056dee4b31fbce5c8bab23ae5dbf6cc925e62e33e"
    else
      url "https://legit-cli.s3.amazonaws.com/legit/v#{version}/legit_#{version}_linux_amd64.tar.gz"
      sha256 "02e51cecb18ea973124d923796d37887a98ad5793cc392a987d861e687bf3761"
    end
  end

  def install
    bin.install "legit"
  end

  test do
    assert_match "legit version", shell_output("#{bin}/legit version")
  end
end


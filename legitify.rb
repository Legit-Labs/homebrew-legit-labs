# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Legitify < Formula
  desc "Legitify - open source scm scanning tool by Legit Security"
  homepage "https://github.com/Legit-Labs/legitify"

  on_macos do
    
    url "https://github.com/Legit-Labs/legitify/releases/download/v0.2.4/legitify_0.2.4_darwin_amd64.tar.gz"
    sha256 "85e6eaabbac218fd8d57e259212636dafba74400b22dde5f2e81a770b8ba091f"
    version "v0.2.4"

    def install
      bin.install "legitify"
    end
  end
end

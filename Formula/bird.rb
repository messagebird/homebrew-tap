# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.6.0/bird-darwin-amd64.tar.gz"
      sha256 "3261655d0fc5085fc925a8331e16ba612913d17fa0d9f3336560984eb4c27245"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.6.0/bird-darwin-arm64.tar.gz"
      sha256 "325ff5d29f4ab67eedef55f51a7d978c145b9243c1e5cbe64dc03489210029be"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.6.0/bird-linux-amd64.tar.gz"
      sha256 "75a1bc453394a808d01de0391116f93bf5e2273e9d69bdd72ead0cb311cb4d79"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.6.0/bird-linux-arm64.tar.gz"
      sha256 "43d182e33f5c845894553eff717a32a9b74f4a9e941f90ba6a99ef55108bbcd1"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  def caveats
    <<~EOS
      Authenticate before use:
        bird auth login
    EOS
  end

  test do
    system "#{bin}/bird", "--version"
  end
end

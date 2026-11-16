# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.173.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.173.0/bird-darwin-amd64.tar.gz"
      sha256 "8ff93d9c41602ca27389c9895b0fd7e13d3ad237802dd494a3645ff22f669a74"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.173.0/bird-darwin-arm64.tar.gz"
      sha256 "52e10f067ec8c716f6e29fe482656f7452d71adada4ef71320b422a66276c5c4"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.173.0/bird-linux-amd64.tar.gz"
      sha256 "15d3162dd48fe4bdba96039978c211155f9f783afa0f526121e924bf85eb736c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.173.0/bird-linux-arm64.tar.gz"
      sha256 "ba06ed570c60ec6ed24ed33c4d073b5cbaf2dbd5079a1ce6a7908cd7c2bcecab"

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

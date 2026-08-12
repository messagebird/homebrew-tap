# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.31.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.31.0/bird-darwin-amd64.tar.gz"
      sha256 "5b865962cb9d2c2459418ff714a935630fa30630ad4a46d3bf1dc56f8af8ea47"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.31.0/bird-darwin-arm64.tar.gz"
      sha256 "f3c636484175f8f62e49a15af7e6ba8d6b0252e6499b959603df37f0421e5112"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.31.0/bird-linux-amd64.tar.gz"
      sha256 "4f9e44b4c09f91ffcbe8646b078d5590d5405d34328cff83d7cd7f9ed681c67f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.31.0/bird-linux-arm64.tar.gz"
      sha256 "aa87af9da147cd8904155f682a14f79538171a33d29572c80e0fbd1f0b1d743e"

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

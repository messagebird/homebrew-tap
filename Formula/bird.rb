# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.60.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.60.0/bird-darwin-amd64.tar.gz"
      sha256 "c0cac2890c7fd130ae7a1a70c5c581903b020de61b61e2f42ab5b3ec1b01bc0b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.60.0/bird-darwin-arm64.tar.gz"
      sha256 "b9af3c8f2ffb3d8502cef365933a870566382edee5770156536b2910ec6c418d"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.60.0/bird-linux-amd64.tar.gz"
      sha256 "47fd4ac5b857c882aed41c4555982444003b7371ed70504c16d7d8bc3be81ac6"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.60.0/bird-linux-arm64.tar.gz"
      sha256 "67a77ef9821db7b3ddcd1ce2f02e905edb723eb38980d3349665a357c19bd207"

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

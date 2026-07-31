# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.15.0/bird-darwin-amd64.tar.gz"
      sha256 "bae1ebd3ebc9f9d0bec8848e394dfbca27f6df53834708d7fce9b0913ebc1f3e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.15.0/bird-darwin-arm64.tar.gz"
      sha256 "bb3ef91953fac784548996bd514923dca2a232365ca5e37a64b1bc9f571765a5"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.15.0/bird-linux-amd64.tar.gz"
      sha256 "fcbdd830eeb3f66ff78474b3a0caf24c7d7f7aa660193588e27c24f013ace8a2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.15.0/bird-linux-arm64.tar.gz"
      sha256 "ad24ac4bb215e6e2db7f4fccc8476ffa7531c55729603548dac31351fa661fdd"

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

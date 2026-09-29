# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.97.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.97.0/bird-darwin-amd64.tar.gz"
      sha256 "2d9e8671ed5359fe65f5c4f29e6a68a2bb092cb45e3a0b5351ade461c00f5c7f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.97.0/bird-darwin-arm64.tar.gz"
      sha256 "bfc84c6721d06b1d41d30a4e0e0fb1f9d60f3e6d2e2a1aa4d9df43af19e74286"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.97.0/bird-linux-amd64.tar.gz"
      sha256 "ad5529b08cafef57f632f70f57db40d06ef07b20bff891c3382d68bf64530f6d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.97.0/bird-linux-arm64.tar.gz"
      sha256 "096444d55b808ff1d7571117680004cf22f7f3088087da77b061e9dc793aa117"

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

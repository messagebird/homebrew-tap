# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.47.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.47.0/bird-darwin-amd64.tar.gz"
      sha256 "d1c741542ae5378ddcf054cfa47e5a010cdfd3f4b33a569e9417ec62ff817722"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.47.0/bird-darwin-arm64.tar.gz"
      sha256 "bd2c9ac4e406b3966d31d564b0fc36527fde2ecc45ee760a54925ac47884168b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.47.0/bird-linux-amd64.tar.gz"
      sha256 "834223d1de060847260d1dedcd5f78a120bdf60cb51f732c0d8935e8133f6d36"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.47.0/bird-linux-arm64.tar.gz"
      sha256 "8d1581c33f9497b72b695ecd0bc690c1b54ceee9e9b52187db01ffe7e17aa37f"

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

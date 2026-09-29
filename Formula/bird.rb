# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.93.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.93.0/bird-darwin-amd64.tar.gz"
      sha256 "35cf23019a04f6de8d23a76921553f306dbc022e9ec96fa32a186dafd1936061"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.93.0/bird-darwin-arm64.tar.gz"
      sha256 "a09e99fbee135fed46d2d663f07d307f4490b0749683a71661792e18f75704c7"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.93.0/bird-linux-amd64.tar.gz"
      sha256 "b20037a8ad26b44e145c62d6aa0a1e1c7ba508650c7dd5f1c20c69fd1fc05aa3"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.93.0/bird-linux-arm64.tar.gz"
      sha256 "dd9c6259a183569a67309e0de67b71a843d01ec8a71a2e7178849d0301a6065f"

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

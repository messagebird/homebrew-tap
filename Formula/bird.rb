# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.106.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.106.0/bird-darwin-amd64.tar.gz"
      sha256 "4db090a38781a4612db432d6db919d51d06e27b3cd749e97ae16fb34b608e0ed"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.106.0/bird-darwin-arm64.tar.gz"
      sha256 "468f25876404500fa48014a6a44eededc192bceaa0cf839ca367bd700eba1c61"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.106.0/bird-linux-amd64.tar.gz"
      sha256 "feef5cf8f43ec3054d76487dea8c1cde1d427fc654afabf275d50f6218339d59"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.106.0/bird-linux-arm64.tar.gz"
      sha256 "cef0969414f5ba4e07c6b01ae12c55b9d31d3bee648fc0f09a81bfb6ccb9eb0e"

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

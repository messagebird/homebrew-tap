# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.73.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.73.0/bird-darwin-amd64.tar.gz"
      sha256 "bb02d8b8eac39664c69a07b74df70bb8453d4857833b35b3f735adb9bf4729bf"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.73.0/bird-darwin-arm64.tar.gz"
      sha256 "6be5622d4a86b30589a0ba30bccbad94393a7b58082c74943ff55732c133b4af"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.73.0/bird-linux-amd64.tar.gz"
      sha256 "73d335b0ce9ba9be1a16d7ba4b8f50232757d3b66088dd7de4f52bd03ec02b2a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.73.0/bird-linux-arm64.tar.gz"
      sha256 "dcdb52a6b541470b6cdebd7152e670748aea9a212f348f2910ca14e766fe5126"

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

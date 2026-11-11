# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.169.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.169.1/bird-darwin-amd64.tar.gz"
      sha256 "958f5c1f5cbf1471118c89c5f337df80fa850cebbd33bc034fe4d533eb17633b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.169.1/bird-darwin-arm64.tar.gz"
      sha256 "2f06e47ecc93b77a4d3d90d3f3db8d5d642cccc22dc865ce5f193f919b850ed6"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.169.1/bird-linux-amd64.tar.gz"
      sha256 "050e720fa5a5b2924e116029bfba66a9b0927c728cc74db5f99532403d643141"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.169.1/bird-linux-arm64.tar.gz"
      sha256 "ad99aaf43b8ec9ab5289373f8e41af9813beaeacb5d14346463a543e866e7caa"

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

# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.107.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.107.0/bird-darwin-amd64.tar.gz"
      sha256 "c5c56236f4a9d3985d613d81b3259bd5d945aa7d934799f008c8f758d13cd55e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.107.0/bird-darwin-arm64.tar.gz"
      sha256 "fd43fb3c80b94e06ff2d250be31a09d9c6a1dff9ffd9089c6c261cf2cbe5fb19"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.107.0/bird-linux-amd64.tar.gz"
      sha256 "a9a20d19edbf1de1a2084d722532dcafd38c26bbb6dcc3cc4770d4835b0be33a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.107.0/bird-linux-arm64.tar.gz"
      sha256 "bff43ad5db468239849f2e1dde4c1ed7a50a08dcc265368fe8a218f52ae4ed7f"

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

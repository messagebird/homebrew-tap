# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.67.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.67.0/bird-darwin-amd64.tar.gz"
      sha256 "2f6031289c0f1450039932fab42ae759c369c7553575bf559fbb6fbc8806e36b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.67.0/bird-darwin-arm64.tar.gz"
      sha256 "4c51d6839f153592cb66148dbdc345e4a611201013826f55393805b35b1b4fad"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.67.0/bird-linux-amd64.tar.gz"
      sha256 "05a1561f0bd60be5980ff507cc87a15ce2bfa753e061bc784587ad8368466f5f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.67.0/bird-linux-arm64.tar.gz"
      sha256 "e235c253b50ecbeb731e06c0db2427997f89d06e7fc8d5c22f5fbd258f48c741"

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

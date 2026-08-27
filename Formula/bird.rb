# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.50.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.50.0/bird-darwin-amd64.tar.gz"
      sha256 "dc562ec2c57977d3373818a5174c44c13ef3fbd567d143ac0c58c97de1c1ba12"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.50.0/bird-darwin-arm64.tar.gz"
      sha256 "ccd443b2fa088782dc60630a36a2c4c7769d705c32f28720d07722c649b95c8c"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.50.0/bird-linux-amd64.tar.gz"
      sha256 "9ca5c62161c8b7d1f22a82644f1d097d1a69e012f2fa577dd14e9b62073dec04"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.50.0/bird-linux-arm64.tar.gz"
      sha256 "a6157cc557de24ea1a0bd12a60f6ac52f1528b59e57d3797d875620f9e8316b1"

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

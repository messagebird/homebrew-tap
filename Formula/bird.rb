# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.17.0/bird-darwin-amd64.tar.gz"
      sha256 "9b0b856ec90e96a55f60af8d2a852f73c24c0496871a4cf6397132fe63305420"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.17.0/bird-darwin-arm64.tar.gz"
      sha256 "e6a02eea4fea1b1fa7b391a86f19622a49eb39bb751eb84db7c8fe10994add59"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.17.0/bird-linux-amd64.tar.gz"
      sha256 "d93400d6c5f64f66f57d9f6df52e8e46a7a3d68b89aa3a44c0302a688424df55"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.17.0/bird-linux-arm64.tar.gz"
      sha256 "0f641a750c8a6adff83f923e4d6111897efb8beca11867c7d4ebf85c9d90ea70"

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

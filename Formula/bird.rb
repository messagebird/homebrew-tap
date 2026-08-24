# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.39.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.39.0/bird-darwin-amd64.tar.gz"
      sha256 "87d9ae5f6243bf401cae67d8e75dbf0ee9c4b359f6ab0c574af801e22080d56e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.39.0/bird-darwin-arm64.tar.gz"
      sha256 "e577d1bdbfeaeab837692c7245fad87b2934a970a50cbd72a7d87230c96d4f3b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.39.0/bird-linux-amd64.tar.gz"
      sha256 "ea784c151cfa9492bd8f5945cb62e877559b663daa4288d4f669369c08f0cef2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.39.0/bird-linux-arm64.tar.gz"
      sha256 "2f2d67eb5e8c5587e0906b9e3c8e5aed0a33f34a8940dde7d9965885444da48e"

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

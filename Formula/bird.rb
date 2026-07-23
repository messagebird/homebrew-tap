# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.11.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.11.6/bird-darwin-amd64.tar.gz"
      sha256 "d8c67c6436d1e769f6044631a7a78275e380e4ccf257df10c86f76191e01ece7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.11.6/bird-darwin-arm64.tar.gz"
      sha256 "c0345c105f491ed1a02c9674742ec17a1a4ae87358554687d8a877b39158b6a4"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.6/bird-linux-amd64.tar.gz"
      sha256 "3819897df2ad8b58e55264ebca0d8df7fe33bf0b73b4ab530d20b71a6be8495e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.6/bird-linux-arm64.tar.gz"
      sha256 "69f5fb9ab60da98763618926367b3dc7795053865e4ff10c745034d7e2ff91e8"

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

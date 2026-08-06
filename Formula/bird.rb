# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.23.0/bird-darwin-amd64.tar.gz"
      sha256 "8ab8fdbad95e133a17d03be9b12c2047f23e1df16737b3bca0f66cc6db8b4e87"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.23.0/bird-darwin-arm64.tar.gz"
      sha256 "833613d0b7d5577d29e1663f735d706fc5fa59c93f124def719cc90f7e1e2c65"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.23.0/bird-linux-amd64.tar.gz"
      sha256 "1194655c8585c55523cce228c51212b4147a65342ecb6b5c1adf574748e0e5c7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.23.0/bird-linux-arm64.tar.gz"
      sha256 "0912da7f9dd8196975d0dd044b343feb1eeeb1f8675f7427479a71bd74cca973"

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

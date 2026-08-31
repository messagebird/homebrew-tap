# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.57.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.57.0/bird-darwin-amd64.tar.gz"
      sha256 "c455ecf0896c3892c3a8f5827fbed2d0c90c32a5a3c40de8c9ab789d4239bf7f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.57.0/bird-darwin-arm64.tar.gz"
      sha256 "008d34443b0c73e53fe0c47659d027cdcec6cf357d132ae4ab49dba9df660918"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.57.0/bird-linux-amd64.tar.gz"
      sha256 "8d3b78bb1b5185604536d8c6c2f7e5b7688c58c6f0dbd31d598c03ea100e6843"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.57.0/bird-linux-arm64.tar.gz"
      sha256 "a8f38a806310cb1583c2f1dd40f67b76645fe76e321b6b88ac8311905878af13"

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

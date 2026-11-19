# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.179.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.179.1/bird-darwin-amd64.tar.gz"
      sha256 "e105c6b0efc527db4c93a3d16aa53547959306df9d7df6124e3d78300940220c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.179.1/bird-darwin-arm64.tar.gz"
      sha256 "f38a91ef04e8c4751435683ae5a496cf0d9907e580f22d8f953361a3d7b88c6b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.179.1/bird-linux-amd64.tar.gz"
      sha256 "ee0187675f95561a7345a8fc19cea2cb50e5e55a0846631303273503995604a2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.179.1/bird-linux-arm64.tar.gz"
      sha256 "f8f8da3970f135c4d2f71334d023e7278c23df74dde49960ff5d87b4fd29794a"

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

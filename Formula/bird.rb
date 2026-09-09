# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.75.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.75.0/bird-darwin-amd64.tar.gz"
      sha256 "4a4b3446ff0d119391e942f80ff2f73cc1863e70512fdf51f2f114315155610b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.75.0/bird-darwin-arm64.tar.gz"
      sha256 "1a05dbc5feb1fdc9bee72bf947da3446fee7f47f3161d3135f01fc624e295127"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.75.0/bird-linux-amd64.tar.gz"
      sha256 "7dfb29544d759b31b45dbd78324fc169bf3b647bd5d6f4e401ceb2daff8b310e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.75.0/bird-linux-arm64.tar.gz"
      sha256 "2e0c93e06476d87a191239027ea43399c26a1b6aa38f60a8afaaac7e637d806f"

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

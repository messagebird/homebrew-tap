# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.169.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.169.0/bird-darwin-amd64.tar.gz"
      sha256 "093342b8a3679f3ffce6e9332ec9b6f7d2a492cd7df7b26f3f14473173297f47"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.169.0/bird-darwin-arm64.tar.gz"
      sha256 "29074d2df6d7f3da9cc34c1a0fee91f6df94c0d4dd2207a9dd196e0556961890"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.169.0/bird-linux-amd64.tar.gz"
      sha256 "987e09c3a513588ce5a0c0fd8d71faf1cecd03703ab04a866dc71e366146ee6b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.169.0/bird-linux-arm64.tar.gz"
      sha256 "69aa1532fbaa09fedcf2108f4fdd8f7e89db06b7c791a0ee0abdddef7dd8622d"

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

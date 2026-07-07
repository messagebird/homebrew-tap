# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.5.5/bird-darwin-amd64.tar.gz"
      sha256 "9601ba322959360c040a51ce5158efc20ddad4219b87b6b6a02c9bb13cd4256e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.5.5/bird-darwin-arm64.tar.gz"
      sha256 "9d424a1a23ea4c97f4f9b6c2b022b069ecd0e70f4b79393b654ce44cfbf561e4"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.5.5/bird-linux-amd64.tar.gz"
      sha256 "bb539d6e8fa1e50d2c4daf8c797aa18ce2e63f87fd809e4c1a5a4c255e344d6f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.5.5/bird-linux-arm64.tar.gz"
      sha256 "011755f51c66b5b9969c6766949cdb80e63d9ba4f8a017d9d71faed52aebbd37"

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

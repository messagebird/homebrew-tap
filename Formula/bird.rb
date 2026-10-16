# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.119.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.119.0/bird-darwin-amd64.tar.gz"
      sha256 "6c89d2881b5348a9deff0f7836e10d67a7f359c7918137a890fc75073f226558"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.119.0/bird-darwin-arm64.tar.gz"
      sha256 "ebab7bda7a27904192fef798c2857b20673f3619bc816bab0c0a921c1c5cdc80"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.119.0/bird-linux-amd64.tar.gz"
      sha256 "6e5669a6d953c60195e10c6dc6e57807c6167d7d63272f51c1694323079baeff"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.119.0/bird-linux-arm64.tar.gz"
      sha256 "4c6910e0a2d3f3000ea0e86d0223064cfec9ddf440d7b40ef8e159a843237fb9"

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

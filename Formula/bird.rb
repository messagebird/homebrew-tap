# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.66.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.66.0/bird-darwin-amd64.tar.gz"
      sha256 "8cc7c81d21d4a51efb3df1f363ce8fbb0677077ff379891edf62f579b913344a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.66.0/bird-darwin-arm64.tar.gz"
      sha256 "61ce8005a3a06102c9f96952b58f6191402fe9c66fd2f372800013d63036d6da"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.66.0/bird-linux-amd64.tar.gz"
      sha256 "428ad388fac501a564b775edb821eafd46b2b49fe6c06c35bf63b841c96ab166"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.66.0/bird-linux-arm64.tar.gz"
      sha256 "ccb3184b2f0e14211c2c77231fb25a7726b7467a0d93c755d4a6df177e65c03c"

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

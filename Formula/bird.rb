# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.27.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.27.1/bird-darwin-amd64.tar.gz"
      sha256 "af855c1e899a67aeda18666d12e5b1e4b79758ef8a71e0ad1c40196f8732a449"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.27.1/bird-darwin-arm64.tar.gz"
      sha256 "309679169fb4fb5aa9ef7e843a6523ddfe9f7fbf960c29faea1717cb17245e9d"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.27.1/bird-linux-amd64.tar.gz"
      sha256 "831a02f47cb3393882f678a0bd74b84b4b203c07e4498665f473d1b560bfff75"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.27.1/bird-linux-arm64.tar.gz"
      sha256 "3c961895da9e7083cd77ee504a1de08f6a8fb65e3302e48fbad7fd1cf5e8ec5b"

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

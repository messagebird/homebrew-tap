# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.80.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.80.0/bird-darwin-amd64.tar.gz"
      sha256 "d52335ca3fb6be03c76b3dfae4dc06bc70976464ec743f4c38ae0ae878f32947"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.80.0/bird-darwin-arm64.tar.gz"
      sha256 "ec04ab8956b38582796811707365c66bc408326c5a9509b423a96d7db822a0d9"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.80.0/bird-linux-amd64.tar.gz"
      sha256 "cf8e70e30759d196a3f905510681b271977331ac230f5443bb4d45fbcd87d24b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.80.0/bird-linux-arm64.tar.gz"
      sha256 "790b5473c019bdb4d7da9ee891fdfdea52985b8994d402a6b56fa962746434fa"

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

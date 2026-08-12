# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.30.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.30.0/bird-darwin-amd64.tar.gz"
      sha256 "4a0484482ab4b32aa1b58998835aea277986452b6facdd5e0d5ee03602286e1c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.30.0/bird-darwin-arm64.tar.gz"
      sha256 "043f8ca257b6f9662c35f81cba8258e7af7b0e10d3a61d0319941178e810a64f"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.30.0/bird-linux-amd64.tar.gz"
      sha256 "51d47bc93f42789b51d99095e2759c931a973721f6015c72d506a79eea1227fa"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.30.0/bird-linux-arm64.tar.gz"
      sha256 "6c9498c37302ec0e020c6aa760a3c6d5d7e056aadc41c57c4407c9e1345fcc96"

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

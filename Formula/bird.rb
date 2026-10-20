# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.126.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.126.1/bird-darwin-amd64.tar.gz"
      sha256 "5394fbc35c29eefb45fba56dc9b10264e0a4e7d6012a2bf1290637e63a58dc99"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.126.1/bird-darwin-arm64.tar.gz"
      sha256 "0b090671ad3c5e96fbd6e5fee1b0e0fa8f85db7c9377c32750a7d29d2727cdf0"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.126.1/bird-linux-amd64.tar.gz"
      sha256 "509ced94a66d81af5abb6f325e6e5fb4da51d56c2ff227f69d6a7e6de2d3df3f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.126.1/bird-linux-arm64.tar.gz"
      sha256 "697dd8033df57cf76e244295159730f28ca1662b6588ac173e7847646d2c9423"

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

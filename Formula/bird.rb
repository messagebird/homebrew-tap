# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.77.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.77.0/bird-darwin-amd64.tar.gz"
      sha256 "84e550937cfae575c412b9ad2c91097dfeba341ddeff6fa720edf7ed7765cad8"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.77.0/bird-darwin-arm64.tar.gz"
      sha256 "eef6ed1b55564b322fbfcb08bdb5f57ff28f3c3d9c795a283561497ff3385b4e"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.77.0/bird-linux-amd64.tar.gz"
      sha256 "8097466b575b2fa738a0c61d55a45896fd6c014ad20e23fea0c102ee9d05411e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.77.0/bird-linux-arm64.tar.gz"
      sha256 "766a1f4e59f9ce4278d3a099433e40351e207a6fac4358ec4272159f4d30ca47"

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

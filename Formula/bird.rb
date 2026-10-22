# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.134.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.134.0/bird-darwin-amd64.tar.gz"
      sha256 "d964ea282e4c51529548329e076d1c06b9490b40abff774bc74b9f3d16d6e39f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.134.0/bird-darwin-arm64.tar.gz"
      sha256 "46c8d0f27f4539e4efd4c0b34348834f7460dfcc0f00506fbadc1cb8f71fc907"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.134.0/bird-linux-amd64.tar.gz"
      sha256 "7dd53afca3858e0e40843fc674fb3cc2b22309f44de3d50aaf5b6822a9e2f0dc"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.134.0/bird-linux-arm64.tar.gz"
      sha256 "e0f5eabb66ffcbea07339a97a4ae0aaab10f57d36b605826812e2fdb20277ffb"

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

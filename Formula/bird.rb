# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.53.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.53.0/bird-darwin-amd64.tar.gz"
      sha256 "7c0d56912fb5a717b5a6b1e24002437599e691c99ca99dadd8d5b0f7c8faf10c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.53.0/bird-darwin-arm64.tar.gz"
      sha256 "38f27b6b51e0648ff5766282e03d6619b901414883945a9333b87c456764bfcf"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.53.0/bird-linux-amd64.tar.gz"
      sha256 "85709a6570c126a1500be72e4792a67de56b9828596ae2a987aa96825ffc0fd7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.53.0/bird-linux-arm64.tar.gz"
      sha256 "3f7c5a9da7ecf9ed90718c5082cf21e3f1bb18b71867a56888e1e767b26ae1da"

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

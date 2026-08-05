# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.20.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.20.1/bird-darwin-amd64.tar.gz"
      sha256 "ed5f792bf793932d0a7dac92991d9f886814a044010fc75c40763ee59a9da3a6"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.20.1/bird-darwin-arm64.tar.gz"
      sha256 "792542bec730cec45fee7a5b709fc8d101b4bb7506eb9f73851ae548146a20e3"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.20.1/bird-linux-amd64.tar.gz"
      sha256 "0565bd386d5f480b6558e3c51dd16298c0f5cc6dfc6aa4a0fd58e9dca38f468e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.20.1/bird-linux-arm64.tar.gz"
      sha256 "caf552731e2077fa68a2482118d59474dcc8d0b3d68e29b221cc0a40d388aa7f"

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

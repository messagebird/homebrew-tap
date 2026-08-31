# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.58.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.58.0/bird-darwin-amd64.tar.gz"
      sha256 "3465117bedc0963e5084d4a4658d577c6007894f70eb7234ee2a6f9700857f05"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.58.0/bird-darwin-arm64.tar.gz"
      sha256 "65a4179ac1007c4b51476eb593de64fd88f57bca8584f1603e761a313d86a7e7"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.58.0/bird-linux-amd64.tar.gz"
      sha256 "f2357d5c4d01001e1acea04fd7c8dd1a408c8781dc825c707d66e2e017f67b42"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.58.0/bird-linux-arm64.tar.gz"
      sha256 "5fd314bf0c58b9f9323b22cb82ee954c93701c7b110c2c1d879f88de57f15d9e"

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

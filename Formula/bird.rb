# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.33.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.33.0/bird-darwin-amd64.tar.gz"
      sha256 "870dc384ab2fcca7eda477381f6f78dfcdc09d83c16af19f1b81337bacf40ed4"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.33.0/bird-darwin-arm64.tar.gz"
      sha256 "7f4d752a9be4ae386d7bf75424f3196ff2d71177ae95aae4f8363029d0aaf699"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.33.0/bird-linux-amd64.tar.gz"
      sha256 "ba6a99583eefdac980e81693df9768c4b97ed7cd7b0c148c64adbdc8b2229fc8"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.33.0/bird-linux-arm64.tar.gz"
      sha256 "2c768e5df82cc88d757ac5c3aa8642675deedb65ae851115c57ce589fdfb6b5e"

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

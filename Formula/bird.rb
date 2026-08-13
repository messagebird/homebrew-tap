# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.32.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.32.0/bird-darwin-amd64.tar.gz"
      sha256 "73eba4e604d6021f8556f8bfc7f4b0c3cb7e337725b8dd7f306b28c321088de7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.32.0/bird-darwin-arm64.tar.gz"
      sha256 "19d2d6c0f91cc6e378963d1d36c7c40b28bbaad85a95edbca67faef1629ea1d4"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.32.0/bird-linux-amd64.tar.gz"
      sha256 "6f45b5b0bad13abe17effcbaee1cf54674f1cc799877cdf57ef9564f3a014442"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.32.0/bird-linux-arm64.tar.gz"
      sha256 "0858f99e588e4a75c0ab39c301e2a8fb2a113ac7c42b831f7b4c741397e39da6"

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

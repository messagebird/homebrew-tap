# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.69.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.69.1/bird-darwin-amd64.tar.gz"
      sha256 "0445b04a08933fbed5b742c7a85859e88f25b03a1b6d33bdd93609aec6e22c9d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.69.1/bird-darwin-arm64.tar.gz"
      sha256 "cf3c6659bb19a0656859b4c4c85ff89e153ab15ccb380d942f1f0bba7470d610"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.69.1/bird-linux-amd64.tar.gz"
      sha256 "ac285ab2f5499b16a8d4e34bfcbe9eb012762d20754279ffbe35f657bacfb24a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.69.1/bird-linux-arm64.tar.gz"
      sha256 "20e1ee553c0371fef155e4823c17e96c71ad5f403c38c4ef9ba2757e5c3e07de"

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

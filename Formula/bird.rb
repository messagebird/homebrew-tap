# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.86.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.86.0/bird-darwin-amd64.tar.gz"
      sha256 "9284c85e44054875497c26491f05771151f4841cbbbc2f1e6f1de2b4420180fd"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.86.0/bird-darwin-arm64.tar.gz"
      sha256 "835a5e3f38db6476e6d016bb66bd0e9d9cfd38cadc107ba05c53f1e398e5b013"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.86.0/bird-linux-amd64.tar.gz"
      sha256 "e73c374377b0184a86ffcc809e5bc202ae47d6f5510b3ad0f2d74400a0513993"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.86.0/bird-linux-arm64.tar.gz"
      sha256 "b5062f95b805c7af4113bd659beedd738450d31ec29e0bb7737ef93884c5a3d5"

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

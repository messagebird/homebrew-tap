# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.157.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.157.1/bird-darwin-amd64.tar.gz"
      sha256 "a8fea092f6e77eb33cb0825e0640e500a7ee03dad4b477a974a95ba725e6dda4"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.157.1/bird-darwin-arm64.tar.gz"
      sha256 "e20cadc90e46ca8fbe9de9716c989594de3fbcf16bac77bcdb1d87916f41067a"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.157.1/bird-linux-amd64.tar.gz"
      sha256 "fa0e8309df429c3e64fa4b18c6100f0dc6e73e7a22052215aed22a243b7ab0b2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.157.1/bird-linux-arm64.tar.gz"
      sha256 "b873d1bb2859e89a398dc396c825f51636005adb6270e733ff31883ba1cbce76"

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

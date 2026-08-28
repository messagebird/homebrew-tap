# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.55.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.55.0/bird-darwin-amd64.tar.gz"
      sha256 "36ead818a06b2bafe01b239af74a06809526be2d51dadb7b976fce630704d1c1"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.55.0/bird-darwin-arm64.tar.gz"
      sha256 "e8279cce038ce775deca74b61b6691fbc093b9f884e7d99d2cc5be21fb2e5ec6"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.55.0/bird-linux-amd64.tar.gz"
      sha256 "e00b145eab1d243c464e044d8ab8244e00fca0b309450790ac14d3827fdbd898"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.55.0/bird-linux-arm64.tar.gz"
      sha256 "fd0119c7f21ad744b25d45609c59467b21125676d318b36443aa0a6d8cc001b9"

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

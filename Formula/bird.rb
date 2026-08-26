# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.41.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.41.1/bird-darwin-amd64.tar.gz"
      sha256 "192967866a694817f92d6a78fe2d6a4f3f980be14a653b7558c23f37d7f9ecdd"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.41.1/bird-darwin-arm64.tar.gz"
      sha256 "d2244fdde40cb2320a21826742e1232fa4e9d0c0f658acbd65023b18e7732b73"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.41.1/bird-linux-amd64.tar.gz"
      sha256 "8766262b4029bccdc73122c9831fd6352caa25d85aa5e1181fd56794b9bdea2a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.41.1/bird-linux-arm64.tar.gz"
      sha256 "8fedc7af26bd451f9fdfdaef44b446ccf27b116d8455d507b77585887945117a"

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

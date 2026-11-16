# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.172.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.172.0/bird-darwin-amd64.tar.gz"
      sha256 "d110a320bcdf6af5ecc037a326e3af67c3809151c637d59d994c15f02498a22e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.172.0/bird-darwin-arm64.tar.gz"
      sha256 "7b41bc20ee2e7afc60e33d4791e774c1d39deabdfb735ad9393db12c6667d4ff"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.172.0/bird-linux-amd64.tar.gz"
      sha256 "d79a8c4bc615b58a9ede9d91a3ececfcfa2306c0f4b35f1db7caa8ba34a749f1"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.172.0/bird-linux-arm64.tar.gz"
      sha256 "27cf2edc93962064edeb0bd84b4bf3009bfe92370a328859067c5ac3ef0da128"

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

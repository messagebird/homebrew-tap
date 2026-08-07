# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.25.0/bird-darwin-amd64.tar.gz"
      sha256 "8dabaf2b856589e406b069d853671028ccd9ea11c795ad9b6915342e9e47f9ee"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.25.0/bird-darwin-arm64.tar.gz"
      sha256 "a6b97bfcfa3e40544a63321c286c584a19ecce3500c56a8f939a5dc346aa08af"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.25.0/bird-linux-amd64.tar.gz"
      sha256 "5f0efd713f1a7856319d763ad649572c02c4ec2539c10e4f57ad276c5b3ccb7f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.25.0/bird-linux-arm64.tar.gz"
      sha256 "c9c0c8dde3017d08d72dc83f853b73a684895b17e69610104ae27e682df7331d"

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

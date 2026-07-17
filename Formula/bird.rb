# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.4/bird-darwin-amd64.tar.gz"
      sha256 "f81b5f07f2e78ce5a81df0fce8afdf0252d57a6649071275b4c33800ae736590"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.4/bird-darwin-arm64.tar.gz"
      sha256 "c008d5d7a300b47fddd78b48dfeb2c28c9db894faf9e3dae90ebb3d7a202b9f0"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.4/bird-linux-amd64.tar.gz"
      sha256 "513746de119feefa71a1495587c22951f8cbc3f795bcb37d82270dbeb14980ce"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.4/bird-linux-arm64.tar.gz"
      sha256 "a6329d631cc7703f0bfee2b0a77e09ff645f26353b242b8a89c22c6f86570cf4"

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

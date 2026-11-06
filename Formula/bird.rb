# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.159.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.159.1/bird-darwin-amd64.tar.gz"
      sha256 "17e01ab761e289c40456af8d1a8c5652df640798d185bb292691c04a44c0f605"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.159.1/bird-darwin-arm64.tar.gz"
      sha256 "be0af258d5c0a70fc415238d69d188b22c395f7e0e554f9784c4df582e258b84"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.159.1/bird-linux-amd64.tar.gz"
      sha256 "c4c339f2819632481fdca00643df270cdfd4ba22bfaa428a82750367f14e2e88"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.159.1/bird-linux-arm64.tar.gz"
      sha256 "701b3ed91909f44daa205da2e5d618a30ab2cbd1441c5de19a4acdd44305b7af"

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

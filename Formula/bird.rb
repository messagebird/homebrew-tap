# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.11.1/bird-darwin-amd64.tar.gz"
      sha256 "a868c45e564c5486e108848cf7a9184d8e2a5ab55ccdc6a211cd196e4f96f58d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.11.1/bird-darwin-arm64.tar.gz"
      sha256 "2cc39ed779af9a5a84d9f929f089d496759848fdf4ae6b2be21a9c34d6ac191f"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.1/bird-linux-amd64.tar.gz"
      sha256 "75e244fd9c4be45473dfc95f52acc0fce6858896cb524724f911ab7377c8ca37"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.1/bird-linux-arm64.tar.gz"
      sha256 "8b25092214f944d2a2e1ee9f9acb17b9c6fa5ef7466babe7742ff4598e30077a"

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

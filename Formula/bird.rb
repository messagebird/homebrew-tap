# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.176.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.176.0/bird-darwin-amd64.tar.gz"
      sha256 "c7a9e69a7ab44e934b0f1400f5ba0082d7e75dc4181f95c8bddc6798e3eea55f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.176.0/bird-darwin-arm64.tar.gz"
      sha256 "dba06b4348d6d1d364f4eb0046ae2a616501ccc8b3d1c6d0f1d5288bb67e9025"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.176.0/bird-linux-amd64.tar.gz"
      sha256 "9ead7a5235d90e47bc80f0aaa4f67a0c81db1b325c7f4b3904898a207a542ebc"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.176.0/bird-linux-arm64.tar.gz"
      sha256 "e2960fc63051964218bb7b12d91db1fcabf1a65d22f5873c866d107a9bff671b"

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

# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.56.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.56.0/bird-darwin-amd64.tar.gz"
      sha256 "e7aceb89a0905c84a66ab288b9385df3de41d6b1bbc30b31b2aafa6b0f85a50e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.56.0/bird-darwin-arm64.tar.gz"
      sha256 "2449f41de9c1f2eb3619be9a2bbbe0b9794e6ac9503a0dfa91745b79ed6bf8f0"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.56.0/bird-linux-amd64.tar.gz"
      sha256 "8e821739b2a59d43cefdac2ccb26618fb84571edb6f28f9436d8d759d7d1c62e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.56.0/bird-linux-arm64.tar.gz"
      sha256 "123530b827bfe2dca868cdbe8d4480742bee51f3f957d4f59bce783e7b77107b"

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

# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.90.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.90.0/bird-darwin-amd64.tar.gz"
      sha256 "b4c3c898413071c4d1c8709a606de5ba0bfbaa46cbedd6a650f5195c4c3f9050"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.90.0/bird-darwin-arm64.tar.gz"
      sha256 "2390ba2e2e69bbc1f49b4df0e993e6cc2c145931f5fda21cc4f693ee21789af7"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.90.0/bird-linux-amd64.tar.gz"
      sha256 "3eff6b70be13a4d4492202f6b6063321bb7deca538c39766558b7903f3fa1c5b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.90.0/bird-linux-arm64.tar.gz"
      sha256 "61797358a5791383abe03c055dd2aaf5095655a5c845157cde7674d822a7f8c2"

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

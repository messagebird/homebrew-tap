# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.13.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.13.3/bird-darwin-amd64.tar.gz"
      sha256 "a4c51f615b5a5278b7c9e72b35fce3e402d3975a768623148d2b6c24667bc159"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.13.3/bird-darwin-arm64.tar.gz"
      sha256 "231cffa5f95970729eaa80e91683c6800c2b0a9e445b737c6b8b57bcb20ae172"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.13.3/bird-linux-amd64.tar.gz"
      sha256 "ddf3618f9d0c5ed4c9bb012100edd60df359b18de6064cb0bb515f0b41f65f01"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.13.3/bird-linux-arm64.tar.gz"
      sha256 "b8af31b8e468ceb7233ad4482f2dd459f6f11fdcff9465de1699dd21bf2fd222"

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

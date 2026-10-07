# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.112.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.112.0/bird-darwin-amd64.tar.gz"
      sha256 "682699daae9d471f57581ed2da110377f2d4605caaf0eaeb7b1e75578acdc6ef"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.112.0/bird-darwin-arm64.tar.gz"
      sha256 "9ad0c8d71eb9e3609876ba8eb2cba01f405aa9b5b5be5b0de48a3d6b26fcc877"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.112.0/bird-linux-amd64.tar.gz"
      sha256 "5748c60874ec6d9025f52ab8060126177a71c519ec19cb621ce9e4a54682e5c2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.112.0/bird-linux-arm64.tar.gz"
      sha256 "9684ebe97b167f4099213bfecc06e964e13726e9a664d326102a5e09610bd090"

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

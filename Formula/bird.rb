# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.14.0/bird-darwin-amd64.tar.gz"
      sha256 "81fae9171fec4c26a66379404e8e485a7735f9445a8867f095708cff3fa722f2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.14.0/bird-darwin-arm64.tar.gz"
      sha256 "76c21914b8b73a83ff333f32b18d18ad2fe895bfb31b7842470d9be8b5da472c"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.14.0/bird-linux-amd64.tar.gz"
      sha256 "ce46a60349596475cf6854088541f120174aefae3d30f93b38e69d0805f525bd"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.14.0/bird-linux-arm64.tar.gz"
      sha256 "2f3d28fc5e5a5a7f3186486e77a0a8f1d1405abcb84150b0eb5c4ae12ecfb810"

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

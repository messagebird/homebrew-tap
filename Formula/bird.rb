# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.165.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.165.1/bird-darwin-amd64.tar.gz"
      sha256 "02b7c63376f8dd71f4a9d7a0cd58a64c244867dac6beca5bd06920125496f832"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.165.1/bird-darwin-arm64.tar.gz"
      sha256 "755e902f042cc4e8cd17b0ffab2e05bb4b5e43a3b4a1386161cca7cfd11fd5ba"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.165.1/bird-linux-amd64.tar.gz"
      sha256 "aac678172adb8ff67177c03bacd17beb0cfc3333825bc305540cc17bf044db8d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.165.1/bird-linux-arm64.tar.gz"
      sha256 "9d266c3b2c09b5cef0cb99b7632a07e4590045ad8a2178710d864611e00ea024"

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

# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.148.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.148.1/bird-darwin-amd64.tar.gz"
      sha256 "342c95827c05bc0859b359bdfad0544939db01d027a75208d02befb8f43bed22"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.148.1/bird-darwin-arm64.tar.gz"
      sha256 "7db37f0a2bd470a86b1bad0798a49c9659e67bf6d32ed7f0f2254fb91b58b174"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.148.1/bird-linux-amd64.tar.gz"
      sha256 "6ef83cfe991316c07330f1b225350e38950c363e1b23c200d4a9a11d183d5df6"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.148.1/bird-linux-arm64.tar.gz"
      sha256 "994d286ea64b5b68f772c41187cedd9a966263708ce9ec56110edc860ffc7746"

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

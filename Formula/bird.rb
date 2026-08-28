# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.51.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.51.0/bird-darwin-amd64.tar.gz"
      sha256 "23fbd97b264cc4bc44fc8932dd838f779ae12d149cf03e5d4c39ab3373c8ed75"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.51.0/bird-darwin-arm64.tar.gz"
      sha256 "6d7ee6e2736b81aed052669b0cb8193cf5afa47ed5b2648666bcb2902e36b6ed"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.51.0/bird-linux-amd64.tar.gz"
      sha256 "a84fca3f096db55f11c160a31282b58bf507815ca99a1dc5a6e606d35df2e536"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.51.0/bird-linux-arm64.tar.gz"
      sha256 "21123a0c13db80c009c195c0658a7888284fb3d7eee3cd30f9f85e7a4e20dbb9"

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

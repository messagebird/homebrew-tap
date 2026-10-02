# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.105.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.105.0/bird-darwin-amd64.tar.gz"
      sha256 "198e5e0e63de2be6a9639b7db4e6940b69c9d68e39200d431bcf3da5d7697080"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.105.0/bird-darwin-arm64.tar.gz"
      sha256 "4b348c4dcb0e69ac48edfab6285389b84cf1e91281d2c9f796fcfbe94b22b34e"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.105.0/bird-linux-amd64.tar.gz"
      sha256 "3f6f51806b21a09d3aa9f4effb39ba61473f7ab4ce417f19a89800fd29f53fe2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.105.0/bird-linux-arm64.tar.gz"
      sha256 "40144d36d4da3ecee49355354aad059388df8574ae16f110684b9cbaddfdec3c"

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

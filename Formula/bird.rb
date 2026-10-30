# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.145.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.145.0/bird-darwin-amd64.tar.gz"
      sha256 "c7767149b3e63ab1ec06642042a4edac066abec503f210876e6ebfcfb7d46912"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.145.0/bird-darwin-arm64.tar.gz"
      sha256 "776f021e25613b700df3a2ff45d9ebf56cb7ca1b97900a77799a90414856673f"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.145.0/bird-linux-amd64.tar.gz"
      sha256 "ee85c06a1686a86c6fcb9739a905f69ababffbb5abccce6e0fbe24ee5589b188"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.145.0/bird-linux-arm64.tar.gz"
      sha256 "bd6e532d796e9d543827326d63b698e03081c631a236553667ca9f8df70fda21"

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

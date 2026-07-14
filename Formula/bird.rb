# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.8.0/bird-darwin-amd64.tar.gz"
      sha256 "1e09cecd86d68f65bebe674f0c4414848545eee450116a3f7efde8c7d41b9333"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.8.0/bird-darwin-arm64.tar.gz"
      sha256 "e10f23d8cee6abbead8d9119cc37359973d9315e7aded97222763a6a56233bb9"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.0/bird-linux-amd64.tar.gz"
      sha256 "90ddd2df3e55f8ccacde5ba7695533031b8d0e845ec9e5d2fa68ed720523ee4b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.0/bird-linux-arm64.tar.gz"
      sha256 "92557462c8b6a56b001d8b0031463a52d70c03c32ba9d6a412fa0c9ebb2dd023"

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

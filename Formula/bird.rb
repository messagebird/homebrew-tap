# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.136.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.136.0/bird-darwin-amd64.tar.gz"
      sha256 "11edc3272f6b3f3805ad67d5aad1c596575fef8322e454dd47b100d532112140"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.136.0/bird-darwin-arm64.tar.gz"
      sha256 "12fc2e67ca87ef9977cb3bb9225b8e89c2cf66798bdf975ea3bb2e42fa0fc710"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.136.0/bird-linux-amd64.tar.gz"
      sha256 "e6d577f01f7560c4fa99eef5efeadd1c86d2799ba9810abe63ee7acc05f89d4b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.136.0/bird-linux-arm64.tar.gz"
      sha256 "a6badb39db1640bd3aa2ae9a3a73b4ac4a28ff4fb580500ae6c88a072d9d38be"

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

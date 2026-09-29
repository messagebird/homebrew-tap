# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.95.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.95.0/bird-darwin-amd64.tar.gz"
      sha256 "647c36fd07a6ffc2d0539f04ef6e2569052985e0129cae797d1a6c869eaeb445"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.95.0/bird-darwin-arm64.tar.gz"
      sha256 "96d6d2cab3e265664d7c1c1590a6210ee4804816b7ca708d1c91fc128ffe57b2"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.95.0/bird-linux-amd64.tar.gz"
      sha256 "172020779a0318e8ac611ea84196fb918bb05ec297f771b84daa1f6f539892e9"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.95.0/bird-linux-arm64.tar.gz"
      sha256 "85f52b7f1c08b83d7a300544a558b57a48e2be32d3ab4f1a8c94f38ddd2c096a"

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

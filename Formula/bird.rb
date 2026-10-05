# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.108.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.108.0/bird-darwin-amd64.tar.gz"
      sha256 "eb7ec2dcead69bcd821bbf2b7cddf0409ee324404f1a035bd69a8c81bbe72650"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.108.0/bird-darwin-arm64.tar.gz"
      sha256 "839c050f476db2b96956dc95ec1148c760f65e2ca68d2d172e1ca157af3c8959"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.108.0/bird-linux-amd64.tar.gz"
      sha256 "26bb52336f643918738242ae174579f3f52f200d324464cd1dcfc7de5a799e67"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.108.0/bird-linux-arm64.tar.gz"
      sha256 "44000d031ee8ec62b81c0f3836fd9ae7b713af75b77104459593f322631ce5f0"

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

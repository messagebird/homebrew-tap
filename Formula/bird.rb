# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.49.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.49.0/bird-darwin-amd64.tar.gz"
      sha256 "83194357cc1b5f07fed6d9cba33e887931767ea1204e0dc0723010b20989c651"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.49.0/bird-darwin-arm64.tar.gz"
      sha256 "10e7471ba08399a2e1bfbc94e303f883ade10cb366dca79a689372b3756d1815"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.49.0/bird-linux-amd64.tar.gz"
      sha256 "b948632b5e6522405022e5ce83d28f8c80c338de5144518dd1a9b7264820a26b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.49.0/bird-linux-arm64.tar.gz"
      sha256 "548acb5ced4802397ba06987aee77716b9703ace73bf2c3a5994558505a0fcf5"

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

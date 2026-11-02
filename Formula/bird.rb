# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.148.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.148.0/bird-darwin-amd64.tar.gz"
      sha256 "a7224cc777f071627145147d29ba89bf9206729b9d97675597917916c1663557"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.148.0/bird-darwin-arm64.tar.gz"
      sha256 "191171be7fe96e2dbda35ededadf0b2c6a45366cb9f135ee19c9ef01a787e744"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.148.0/bird-linux-amd64.tar.gz"
      sha256 "d987ed0b1d9765d6f2eb0651f2b9b6d66eb9b90c857b0c2be049d3e6d7f0c332"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.148.0/bird-linux-arm64.tar.gz"
      sha256 "001cec7723d595f27f587884d656e1b644a205244e533120ddf9d32e7e6225e7"

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

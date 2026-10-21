# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.128.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.128.0/bird-darwin-amd64.tar.gz"
      sha256 "54d046ad8c094410c509a52f1a3d273217b871104bd78ba2954c5fcc44e745e3"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.128.0/bird-darwin-arm64.tar.gz"
      sha256 "2abd294ef382465afc6ffb7925a8bb39cd107c73a84e6832037f6a665012048b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.128.0/bird-linux-amd64.tar.gz"
      sha256 "9dd460a195e419a2b667930bb49cfd34528ea58119d9a4613b0060fb5f71904b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.128.0/bird-linux-arm64.tar.gz"
      sha256 "d354299a8a71cf1d8313084aeb47b7967ba77f2434a98a37b97dfb2a6802834a"

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

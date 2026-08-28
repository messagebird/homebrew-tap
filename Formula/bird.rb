# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.52.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.52.0/bird-darwin-amd64.tar.gz"
      sha256 "4df75db0c9d810fe5fbc1d68376ff0dc2a2dfbcf1be8f760e5c95324216e576c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.52.0/bird-darwin-arm64.tar.gz"
      sha256 "dfb9ac4ab1db00d5039e7ad868f98baffb83ac80e7940949aaebed076590688f"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.52.0/bird-linux-amd64.tar.gz"
      sha256 "cbc400327a1221f89dfc0e6f732747e1b0e536dc9b507bfa3c3c0a62a32edb5c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.52.0/bird-linux-arm64.tar.gz"
      sha256 "64db81e00587e968f1006429089fc1f226114799f04ee6fd69c2ad3bcb7591e3"

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

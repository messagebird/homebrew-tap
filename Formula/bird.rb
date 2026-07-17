# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.6/bird-darwin-amd64.tar.gz"
      sha256 "2daf74e1dca1ebc04a171b904186fdf45a7f5dcab933ae698ea518d83817e0fa"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.6/bird-darwin-arm64.tar.gz"
      sha256 "fe8dbfd3275e3a309a86a5e6eebf128c6eff8922ad4180d5dfc7e606456a7b60"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.6/bird-linux-amd64.tar.gz"
      sha256 "43310d9c498342f4438671642878d91e3a5497a071e1c1a28c7490b5bb39ae8b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.6/bird-linux-arm64.tar.gz"
      sha256 "ead1e21e97c58b5ede0a5600b964a175521c3589f89a3d8383f872b21fe2b683"

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

# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.5.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.5.8/bird-darwin-amd64.tar.gz"
      sha256 "93e01dbfb7fcbc3a8d4653e0cf7ec9356fe39659215f27ececba3d1b20db42a4"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.5.8/bird-darwin-arm64.tar.gz"
      sha256 "7f355785fedfb9c54ccb1d0d69fdf0f9138a18086072bdeaeb7724b0d2907e67"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.5.8/bird-linux-amd64.tar.gz"
      sha256 "27d62892960ee67684c666558185f5a31f56c15eee67b8e1223076ac4d8595ce"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.5.8/bird-linux-arm64.tar.gz"
      sha256 "6ef4b6d96b017853ac686de5a4549cd6ec7a82e90c2a105d0ed1616febff080b"

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

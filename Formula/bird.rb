# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.11.3/bird-darwin-amd64.tar.gz"
      sha256 "988721da3e7e814232757498eba0d98c2ba274368e74c48ce54971e7b8a6ca33"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.11.3/bird-darwin-arm64.tar.gz"
      sha256 "3f239d0a40edcdf49c9d10261e6721540cd8ba8dc3c682f9581d461b8cd9364d"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.3/bird-linux-amd64.tar.gz"
      sha256 "dd34572f1d89c590c0a2d5bb94bc926380353de6ab9f4fae5bc73c3eb25f0ea6"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.3/bird-linux-arm64.tar.gz"
      sha256 "4c5741d14eee9527b60718efce9313f6a300d470241f77af4dc46e9f9ddd0f9a"

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

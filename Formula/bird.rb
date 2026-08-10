# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.27.0/bird-darwin-amd64.tar.gz"
      sha256 "53f5952789eca71d8a85b5e6db19ee244b58b3e697f4ce86a9478498270f15c3"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.27.0/bird-darwin-arm64.tar.gz"
      sha256 "743880bfb21bb2df0f387a0a0e4e6b154e4f394503f64f5b358c0df01923b5e7"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.27.0/bird-linux-amd64.tar.gz"
      sha256 "df5c475d862ca0312ca3d489f82e3e35aac7e4d8cba374deaf901fc72485b600"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.27.0/bird-linux-arm64.tar.gz"
      sha256 "5916e2209d83609cc8f56c8dc72ba28f7117e041feea03a603f0a5ed0b40a2cf"

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

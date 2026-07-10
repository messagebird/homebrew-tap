# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.7.0/bird-darwin-amd64.tar.gz"
      sha256 "71e617cede9a32c8a54b960d0105e14044484f196fb25c9b999c5889a1e9f0da"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.7.0/bird-darwin-arm64.tar.gz"
      sha256 "982058ea5da995844d3a5cffa42d21726bfdf9d1af6f6ea6fbb995708280ac36"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.7.0/bird-linux-amd64.tar.gz"
      sha256 "35a7568599a98d604a6606268c84d5b45f22ec5e3331e9f3d8306ecc87b38766"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.7.0/bird-linux-arm64.tar.gz"
      sha256 "1ff26573c9af43fce4c343b8baa214004186a5994a803b3d349c9848d2d2318e"

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

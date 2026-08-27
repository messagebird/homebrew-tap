# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.45.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.45.0/bird-darwin-amd64.tar.gz"
      sha256 "f9b211a2913244b73fdffd9b38fe8a7f772d2b70a07bc0a66e97e0e550456d14"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.45.0/bird-darwin-arm64.tar.gz"
      sha256 "498b23a4967b7ddee0c2cc709c537cd13ea0aa44b4e8b95d3d7e34f30faa03c9"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.45.0/bird-linux-amd64.tar.gz"
      sha256 "337daed0a1ae921cf6ec5f204ac39e7c0b1909e2949d3c015a53d5a68ad93cde"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.45.0/bird-linux-arm64.tar.gz"
      sha256 "d570460bebcb0e472ac339841945147995cb23cc1de55b5c5db29223212d1c17"

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

# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.180.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.180.0/bird-darwin-amd64.tar.gz"
      sha256 "845788dbfad0519ca27aedb9d4206cc60db05dff8195ac194fbdc2c31845125f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.180.0/bird-darwin-arm64.tar.gz"
      sha256 "dc8a640cc2be986bbb6b1ee3f5c6058c0a66008b79e0810bdd0ca0227029fe83"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.180.0/bird-linux-amd64.tar.gz"
      sha256 "5d70aa6701d53f3ffc7eea2cd4713ecfc7b93f12f3feb32b1b3eae740a8cd161"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.180.0/bird-linux-arm64.tar.gz"
      sha256 "5166a4d0e4c7f81051c4f514404e5acfe7688c8d05a412d8de92f0b1472361ea"

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

# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.165.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.165.0/bird-darwin-amd64.tar.gz"
      sha256 "acd3d3b2511e2d5548f7efba3a5ca24ab96a977cf84b3b06543afe1986286bc6"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.165.0/bird-darwin-arm64.tar.gz"
      sha256 "af584f4cc0acbae69a6fab57fc460b0f0ba4c2c019325885c7776844daaad908"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.165.0/bird-linux-amd64.tar.gz"
      sha256 "a40e128678d4d6486b6460c8828a70bd254aa9c4599ca496f01d0487e96a381e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.165.0/bird-linux-arm64.tar.gz"
      sha256 "f6e167beb1c40b0e741a31a8ca03f96e686bd5d8054b46e0f92c08e152aa2b6a"

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

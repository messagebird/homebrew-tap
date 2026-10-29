# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.142.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.142.0/bird-darwin-amd64.tar.gz"
      sha256 "3394343387709851c3cf5183ba597cce1ba33c899bfcd0479e36df44f96928b3"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.142.0/bird-darwin-arm64.tar.gz"
      sha256 "52fbbebe8bd38dc5769ae6f592be5b90b6aa43bd806f8364a2b6099b5acfa24b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.142.0/bird-linux-amd64.tar.gz"
      sha256 "a05a30ff1ae76fd8f5817bf38cc9d8ccba25ecdd32b9fc0a8fd7c311c2fa508f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.142.0/bird-linux-arm64.tar.gz"
      sha256 "03be9aee4ede4560c1b896eee0cccd87671ec882bbf2d93bf1eed48742e418af"

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

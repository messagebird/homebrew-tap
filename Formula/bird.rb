# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.151.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.151.0/bird-darwin-amd64.tar.gz"
      sha256 "c7c47ca1e3f523a9eb6ed9bc10e6fddd658f0d7ffc63139ea038586e8f4f2a17"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.151.0/bird-darwin-arm64.tar.gz"
      sha256 "a5eaa93fe18b85be046bce32f72da6ce3cea2ef331b366f1215b807ee7803079"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.151.0/bird-linux-amd64.tar.gz"
      sha256 "ccffc4f0810dc1ca2dc33bafae0f6e0380b55a577f5921985b202aea8ea6d99c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.151.0/bird-linux-arm64.tar.gz"
      sha256 "f2d3ca933524b348b7469ce420a277b2f6287268c0d4bf57e2b509e59496264b"

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

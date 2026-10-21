# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.127.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.127.0/bird-darwin-amd64.tar.gz"
      sha256 "271f47621b4b2546251ea0a81d33f3a3a3ce02f8490c8c666172cefa579710c8"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.127.0/bird-darwin-arm64.tar.gz"
      sha256 "e2f98b0798935553d1a8bcdb00d39912e7c7674a0651404fe136216cef661d1b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.127.0/bird-linux-amd64.tar.gz"
      sha256 "bba4a7ce1997d9c0d33034775695f8aa0d468565eac798dfc2daaf43abaad56b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.127.0/bird-linux-arm64.tar.gz"
      sha256 "e1d1c816b49e060b630fb3d64f9e3b0782c6c6d5369c59160e5dc68650e951dc"

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

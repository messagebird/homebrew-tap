# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.48.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.48.0/bird-darwin-amd64.tar.gz"
      sha256 "737e8f215be3c9d59550bdd21245dd3986d651e449c4c8f97ff77faf8f18e439"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.48.0/bird-darwin-arm64.tar.gz"
      sha256 "e56d6d3cb6d9195fbf04e1e3fff5f58fa6b42c5ca46354e5ea45967ae4f376a5"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.48.0/bird-linux-amd64.tar.gz"
      sha256 "3b352c5332e8d100f7bf36be40425277e339e92a48bd354c3752d752f36052fc"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.48.0/bird-linux-arm64.tar.gz"
      sha256 "28986d9068c5f77f1aeecaa4fc10694a7eb1cfe612099c6786de5f76a1e3fd35"

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

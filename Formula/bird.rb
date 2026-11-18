# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.177.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.177.0/bird-darwin-amd64.tar.gz"
      sha256 "4853531fff008a430176fc25a894be2dfc6c39a1880c0a38c2b8e5b1df04a885"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.177.0/bird-darwin-arm64.tar.gz"
      sha256 "56c52a8fb71706e54d04a47c2f195b55fe7f0c418399a567d015595232e5853b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.177.0/bird-linux-amd64.tar.gz"
      sha256 "fc9d9a6a8d66709ad465ce98b9b49543de35f6eb18ad679d04bae098ef474717"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.177.0/bird-linux-arm64.tar.gz"
      sha256 "86759bca15d61ac31c7e8b232215ffde54a154df23a0d798d42fa6fc9e5358be"

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

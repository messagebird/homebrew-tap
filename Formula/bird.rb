# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.178.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.178.0/bird-darwin-amd64.tar.gz"
      sha256 "2f3dc6f5ea8f5a68d5ef9642d1d985221903c8f8aa97b3f9ddb32a4bd6e95870"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.178.0/bird-darwin-arm64.tar.gz"
      sha256 "ae414b4937855b85ecb3082a46b4f77ca3f7f5f110d20ef50985db9ef36e34d9"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.178.0/bird-linux-amd64.tar.gz"
      sha256 "e554f3e7f8f490d00987bcffdb796c7889e893a43849072753172d10fc303fef"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.178.0/bird-linux-arm64.tar.gz"
      sha256 "751b1d18ca9af2b79050de59c7734827ebe19aa576b9b37efe904ff4bdb02f0a"

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

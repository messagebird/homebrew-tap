# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.156.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.156.0/bird-darwin-amd64.tar.gz"
      sha256 "e50f601dd320d2c310c109efd6fc28de3a1a51724fb35dfb7d8082cf31673370"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.156.0/bird-darwin-arm64.tar.gz"
      sha256 "f9f754e0ee11b927f35490c82b44c81b8c88eb2c0ac6524ba1492d6887d656ab"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.156.0/bird-linux-amd64.tar.gz"
      sha256 "9bb56e7b0eb1d9105ce0e0619f71d997f30cd81809b8e66b79df519e3f668d05"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.156.0/bird-linux-arm64.tar.gz"
      sha256 "6539c2682b1382f22eb0c2abd059a8e16ebd9b9c249b27c75e1b09b70da4af50"

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

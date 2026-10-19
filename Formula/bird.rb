# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.122.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.122.0/bird-darwin-amd64.tar.gz"
      sha256 "5ffce1db3cfa304be73a632bab6930cb2c7f727e2d779a10a8622871832768d7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.122.0/bird-darwin-arm64.tar.gz"
      sha256 "e171b9084520f197235a4a5c333bb277160040910c73a55a89c2e53f215b3ce8"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.122.0/bird-linux-amd64.tar.gz"
      sha256 "05c4ea6c24e43d84b80ca2f056cd83c651e8dca0554f917a53a08a7e11d12eaf"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.122.0/bird-linux-arm64.tar.gz"
      sha256 "39c2762c7df1a1239a182fac17775a7332d125fbaec149d6cef43e640c1a3687"

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

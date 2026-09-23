# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.89.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.89.1/bird-darwin-amd64.tar.gz"
      sha256 "aa47d08da347f6845f78f4ff8299daa5a577ee8acb4d08a26330ad224413bfcf"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.89.1/bird-darwin-arm64.tar.gz"
      sha256 "657b00c832e5ffb170075436197b8e29f9b2c4842fc416266aaae1486c89b3a4"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.89.1/bird-linux-amd64.tar.gz"
      sha256 "0b19b0288c58899d2fe6caf9914bb3a6cfd76c9bcce720938e246f60eca627d6"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.89.1/bird-linux-arm64.tar.gz"
      sha256 "b20df4a7aab08c73d52f4e0970df5c24bc378e1b2fcfe4cfead98714110fc9e0"

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

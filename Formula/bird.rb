# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.154.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.154.0/bird-darwin-amd64.tar.gz"
      sha256 "171f43951e8bd8b18dfb9611ca2e795a8d3e59722767ed3598f2ad7191e47d1e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.154.0/bird-darwin-arm64.tar.gz"
      sha256 "d2d035cadf25ac36dd7a148163accef519435e426854cc29d5a1212d7a09e33b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.154.0/bird-linux-amd64.tar.gz"
      sha256 "d9bd09662bc44e39a827e7171edf235bce3f9b85771f99a9ea7463d899e0094b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.154.0/bird-linux-arm64.tar.gz"
      sha256 "04b796aede2de86942866b734979ebde2cca695c2ced269f6de9966e608e3323"

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

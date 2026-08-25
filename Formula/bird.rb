# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.40.0/bird-darwin-amd64.tar.gz"
      sha256 "4a7aafac34a5b12334d219e69e38b9560b5bb2c34619e93bd9fc91cf3c56eb14"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.40.0/bird-darwin-arm64.tar.gz"
      sha256 "4a474d0a476d34f5ec9b646cbec66b8a665902d0b651df812f8ebf6cae51aa7c"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.40.0/bird-linux-amd64.tar.gz"
      sha256 "87053cbcf76ba40f278c990feef0a963fac4b16450d9cd9b909d5800761a43df"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.40.0/bird-linux-arm64.tar.gz"
      sha256 "1e271386acca50f105da9850a990f0d9811aada68e2c0dd54006cc03b6c55c84"

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

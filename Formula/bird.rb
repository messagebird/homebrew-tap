# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.123.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.123.0/bird-darwin-amd64.tar.gz"
      sha256 "f48443fd83a44700880663a8cdba4f548b1294790015672b245975ad55fa5105"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.123.0/bird-darwin-arm64.tar.gz"
      sha256 "0e68fe61dd8d350bb8a4e15aefc8023a720c3a7efc3771a81e8934ed2f600f0e"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.123.0/bird-linux-amd64.tar.gz"
      sha256 "fc6cd249e60d24a583ca0abafa73ccfcdb497f5ec245941681c2c2d877244feb"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.123.0/bird-linux-arm64.tar.gz"
      sha256 "6acb6c1e66a5d1777c76277d79a9fa2f3d2524c6cd0d49f9877107853efecb57"

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

# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.168.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.168.0/bird-darwin-amd64.tar.gz"
      sha256 "959ecf776665a33441e39f51ed5529c938c269492b0c2bce7de764598f58af80"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.168.0/bird-darwin-arm64.tar.gz"
      sha256 "1faf2313548e18a8069dee4bc676ac9649c6fa8b549e07f6cd971ae0aaaf2772"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.168.0/bird-linux-amd64.tar.gz"
      sha256 "784096f682a4b1195934adcf92dff4ebcb95399c0846745b703d5e654cd1ac63"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.168.0/bird-linux-arm64.tar.gz"
      sha256 "4daac33156bbd342dc64e2d6b92a155e0e0e447d630418b25773bab998b79379"

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

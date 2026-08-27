# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.48.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.48.1/bird-darwin-amd64.tar.gz"
      sha256 "6df2c109b149344e2109dc1955354b6250b309a64659be895587ee465c695d96"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.48.1/bird-darwin-arm64.tar.gz"
      sha256 "1582744597cbac094c7ceef9ad30f13491cc7a04590bf87367fe7046a4082d71"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.48.1/bird-linux-amd64.tar.gz"
      sha256 "13abfce257a3fa4fb901dbb70169ea7aa81738e9593aabb936913ceb03e72205"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.48.1/bird-linux-arm64.tar.gz"
      sha256 "8cbb711ba92bda85bfc4f78f14d0cbfc32144cdfd199f38115af29a99afe82dd"

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

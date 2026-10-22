# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.133.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.133.0/bird-darwin-amd64.tar.gz"
      sha256 "bbec17f12502e67ee9a7d5d76bbc2f71672c284e96bc3d26dc333cf2e64f1ed4"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.133.0/bird-darwin-arm64.tar.gz"
      sha256 "c2862eb0413a090fd3f3c5614559b4c20c8e3bc11057d6ce55519587476fe97e"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.133.0/bird-linux-amd64.tar.gz"
      sha256 "b57ba6263c1a2e5f02cc1dbc6b7e9d1a287989f0a8482be3a6a0bc92206ff8e4"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.133.0/bird-linux-arm64.tar.gz"
      sha256 "dc157d05b567d22a70a68819d8326143f9bb70d9211931925e5754b7914cc47f"

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

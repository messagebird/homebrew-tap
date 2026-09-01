# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.62.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.62.0/bird-darwin-amd64.tar.gz"
      sha256 "969c1994ce4c583bd9d35401b2a03e266fde4794b0af832d0e1dac33e66927e0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.62.0/bird-darwin-arm64.tar.gz"
      sha256 "ad6bae14e05291c0e8530d7fd4f0fab1b0acff143c6d9df762a96d5566c663ec"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.62.0/bird-linux-amd64.tar.gz"
      sha256 "3234bf0614d9de36a70803d93ad9d93cdf4a2f631546d108fed11c8598b785ba"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.62.0/bird-linux-arm64.tar.gz"
      sha256 "2325a1c20832bfd512f9a7d7dd82ad09e2956c37d0317dbedeb95b5fc25d5b20"

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

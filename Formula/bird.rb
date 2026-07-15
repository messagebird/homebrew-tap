# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.8.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.8.7/bird-darwin-amd64.tar.gz"
      sha256 "b39429ed78eea0d826e687cca8acc95294ae103130302ca9ac967b900e178de7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.8.7/bird-darwin-arm64.tar.gz"
      sha256 "d3b3588d66121f64f3952e0cb162fdbb34ab163378538a5841a1e543020e24e0"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.7/bird-linux-amd64.tar.gz"
      sha256 "42eab0aefbe7027ee3f56685a5abbee31209af7f1afefcafbe5d6919af658fca"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.7/bird-linux-arm64.tar.gz"
      sha256 "45d5e6e9e186c990e09269cb007806445d76ddec5e93c1296db60888ed170875"

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

# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.36.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.36.0/bird-darwin-amd64.tar.gz"
      sha256 "9b83f370f2746f02c1354aff8373867d84e9625b8b4bbf1c872e35836398fed7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.36.0/bird-darwin-arm64.tar.gz"
      sha256 "436d40bb2e4d5c0e8d726df4219475bdc9b84cdd4489c332ce68ca7e79f84aff"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.36.0/bird-linux-amd64.tar.gz"
      sha256 "e653e0720698920ac4f259a4a35f805b06c8356a3fc81940b5d9fece728a7558"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.36.0/bird-linux-arm64.tar.gz"
      sha256 "b4f0fc6512908fc43fea3f850e1672b0a946d1b1ac57be720303975e4a9601cc"

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

# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.70.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.70.0/bird-darwin-amd64.tar.gz"
      sha256 "596be527d5f7c261b3547eaa21015d42d97e44c5d37007dba1e5798223c48838"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.70.0/bird-darwin-arm64.tar.gz"
      sha256 "f5862f492616f9ce3523988d85128e61b800a9f8809185f158145c83bad9d472"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.70.0/bird-linux-amd64.tar.gz"
      sha256 "9f7c892e0620df0dca378d31365f8193cb66f5cf3897f1582a37ce6c2cbc4ae3"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.70.0/bird-linux-arm64.tar.gz"
      sha256 "4db8150e29b22e022f202ae3ecb053ccbb1d398de12fedb1e692ace4554edc24"

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

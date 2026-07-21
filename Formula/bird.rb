# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.15/bird-darwin-amd64.tar.gz"
      sha256 "df3812d54642e906d1a0370b55db56cd5b38d83337d8281727c18f39dc2f4263"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.15/bird-darwin-arm64.tar.gz"
      sha256 "e97257a8dbd2826a22e14359cbf9170a5f075928c788e4268f5210b4f7a5d2eb"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.15/bird-linux-amd64.tar.gz"
      sha256 "342f559162993a44c198d4693e04e7c45530596e7a15579bf61152537108c68a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.15/bird-linux-arm64.tar.gz"
      sha256 "ac26e1ec1254b710ce7f5c4a389982453827867f8860df90da4d8cc5fbad820b"

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

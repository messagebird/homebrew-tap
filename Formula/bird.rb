# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.107.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.107.1/bird-darwin-amd64.tar.gz"
      sha256 "f524b28582fcb7049f5a8784b1d36e59c82e417f78cda301c6f8552a9a911fef"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.107.1/bird-darwin-arm64.tar.gz"
      sha256 "6cfcf7a2dbcbef4645c077ed006bb73c7b2072d0a5e39147aa1f59d8e25f621d"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.107.1/bird-linux-amd64.tar.gz"
      sha256 "1e8122f9e71da5a71891c988c17dc4d7eb18e810dffe7084ef931b4d10e31607"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.107.1/bird-linux-arm64.tar.gz"
      sha256 "cf7f632afbdf1cd5948fce9c96919e573e1ff4171dc92c95213b71dcbd550d55"

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

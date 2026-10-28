# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.138.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.138.0/bird-darwin-amd64.tar.gz"
      sha256 "613c9010d52179d0ae6d43b37f77f62a4e4298726eff8acb9f7560c2f9081c02"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.138.0/bird-darwin-arm64.tar.gz"
      sha256 "3d9c696d350f7fd568a9a0da47447585f1aa7f44e61618f2bb8ce00689205874"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.138.0/bird-linux-amd64.tar.gz"
      sha256 "6446ec94b01d8216e6c0135ea4926db17352c21d999b944558bc8c995e6fc06d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.138.0/bird-linux-arm64.tar.gz"
      sha256 "132bd3239e97f5fab3b7bf2e32a8dd4dbc0031bbe1aabe9cb76e1f4c0ffe4baf"

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

# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.14.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.14.2/bird-darwin-amd64.tar.gz"
      sha256 "cdc3a30ce7ec0235cdc51ce3d0dc1366ed42ff015fca378b06d54bf85065e4ce"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.14.2/bird-darwin-arm64.tar.gz"
      sha256 "979cebe0bc3a759c2f771ab0fd72395d866fc48a0e8a0305d2bc9846552538d0"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.14.2/bird-linux-amd64.tar.gz"
      sha256 "ce4b31ed3188749860006e4ad495f3498d91f6f0db740658f206c32216319b64"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.14.2/bird-linux-arm64.tar.gz"
      sha256 "cc16bc806e03aae0cb344fad90289045d3ce5d655c64409d0eb5108fa2ad831e"

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

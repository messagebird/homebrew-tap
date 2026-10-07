# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.111.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.111.1/bird-darwin-amd64.tar.gz"
      sha256 "89e093012d88b8c2e0ba50b333c278040430a2b33f8607bed737613af1d9d352"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.111.1/bird-darwin-arm64.tar.gz"
      sha256 "e0b50cb4662ade8d1f5199430565dc714cb3b067d2a1be1eee39f60c45178557"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.111.1/bird-linux-amd64.tar.gz"
      sha256 "4cb67c0d1042b073f6e7adaccc84de320f79afa072b96aca5b8da51152691394"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.111.1/bird-linux-arm64.tar.gz"
      sha256 "7ee8e1e157b7ef13e84bc59265f3beb1a2579d0cee31fd784fc6489ea47e16af"

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

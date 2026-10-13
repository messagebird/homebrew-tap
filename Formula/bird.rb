# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.114.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.114.0/bird-darwin-amd64.tar.gz"
      sha256 "14f8fa3ade1bebc7031f3a9f75ec5aacafbf571f727cf87e771638383da9b75b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.114.0/bird-darwin-arm64.tar.gz"
      sha256 "6b5cded0af23333724a2275c02fe8aa0096c7dd2d2dcf361a8f5bd4965cb1885"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.114.0/bird-linux-amd64.tar.gz"
      sha256 "073344c04645b73ec822ee91ddaef09ad66afa2aa7ddbef86e1166c9ef108f59"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.114.0/bird-linux-arm64.tar.gz"
      sha256 "2826d3060bad0d9623782d0869a6ee493d84e070387cb00e033d8da03f74b19d"

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

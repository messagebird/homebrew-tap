# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.29.0/bird-darwin-amd64.tar.gz"
      sha256 "d423754d21540cf5bc46f369614318d092bdb74ecf64a80122039234a84ca985"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.29.0/bird-darwin-arm64.tar.gz"
      sha256 "bb606f2b674e0a9b66a7bb12c9608318afc281f6bd2150534830a42716ec20e7"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.29.0/bird-linux-amd64.tar.gz"
      sha256 "68a33b8147ec1dea012744dbc34ab59fae2a473ab6225e330987e41aa81d8a06"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.29.0/bird-linux-arm64.tar.gz"
      sha256 "e5df426ace016064d413de258102e88365be1b6551d3f5e05abd74852525d441"

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

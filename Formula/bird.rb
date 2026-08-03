# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.18.0/bird-darwin-amd64.tar.gz"
      sha256 "ece678d4f5ace8170be6c7275e8cca55feb6a518750f09cd1170862724771af5"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.18.0/bird-darwin-arm64.tar.gz"
      sha256 "4b73a67d83e46446d97a266ac603b16936668d53b22cb6890982e25210eb260f"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.18.0/bird-linux-amd64.tar.gz"
      sha256 "b356ea28240e71dbd793549e28a6080c53c1b0d42ddc9aa8dc0f4dbc06f4c0e2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.18.0/bird-linux-arm64.tar.gz"
      sha256 "ec526445ce74b7962393e561c2a78238e1afbd00966fdf0109654707e5ea7c22"

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

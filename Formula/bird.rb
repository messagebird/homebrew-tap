# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.131.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.131.0/bird-darwin-amd64.tar.gz"
      sha256 "62925d6a541542f78c3228de5ee342b9522afb96955098db09c8d594d1328c43"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.131.0/bird-darwin-arm64.tar.gz"
      sha256 "c881cfdbf501265ab8ca187cce4f21ecc8b5a1219ab2ec33ed66c50971e26e4d"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.131.0/bird-linux-amd64.tar.gz"
      sha256 "18a3cbd0a46aba3d35ddf6703550d8c440501a84542133ee6c7bd037efd256bf"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.131.0/bird-linux-arm64.tar.gz"
      sha256 "284554f1015216584d8d512f137b836c5a23a4eaa4d06f35d10250a67e7d7a44"

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

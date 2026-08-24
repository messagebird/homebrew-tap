# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.38.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.38.0/bird-darwin-amd64.tar.gz"
      sha256 "000927fa03225f00bff27374fb80dcd4dd8b57364c59d1a2050ae11f296a78da"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.38.0/bird-darwin-arm64.tar.gz"
      sha256 "95c31c26f62bba23abb45384229c4e64a12d7ae12a2ac113ea2e2cc9a2b03eb9"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.38.0/bird-linux-amd64.tar.gz"
      sha256 "1f42b6ddf18aa6d0bf7d6e40627753e867019b07a2de6201fa941daa987c0a7c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.38.0/bird-linux-arm64.tar.gz"
      sha256 "3a1face46ed0294ef1ff4aed237d39fe8cb0afc400e28971846e198a5f07b417"

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

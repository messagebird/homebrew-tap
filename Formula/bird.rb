# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.59.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.59.0/bird-darwin-amd64.tar.gz"
      sha256 "e38456215ea509df1e17d16f4ca1672950b22822f997c680480a483987e7d6bc"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.59.0/bird-darwin-arm64.tar.gz"
      sha256 "d7a4863c87383c154c01ca42533e03d9cb35e97b12629fcd129f377cf0009566"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.59.0/bird-linux-amd64.tar.gz"
      sha256 "7f0d0ad7b84fc6a4a94a4351f0836403ba04408718814ebf7e63e5955ddcd063"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.59.0/bird-linux-arm64.tar.gz"
      sha256 "30507c311c000b7755f66ee7e55470955edcd8d27cb7a9054776cfd8e8f941e6"

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

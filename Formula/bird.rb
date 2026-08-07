# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.24.0/bird-darwin-amd64.tar.gz"
      sha256 "2c12b648d396b375021a52d05e97549e24468a87cb77c5bf0f18f2fc79a98c9a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.24.0/bird-darwin-arm64.tar.gz"
      sha256 "795879e103201fdb9047a55be6fa5b96dab83cb5ac19bd169dea0f7640f7796e"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.24.0/bird-linux-amd64.tar.gz"
      sha256 "2ac6387987a22e4242b92e96214659eb1cf132e652092895293d7be6496492ab"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.24.0/bird-linux-arm64.tar.gz"
      sha256 "e088278d8b22ece8fed18f3bf64dfa19ae31e27f8c38784d361bfb8199fdbb3d"

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

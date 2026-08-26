# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.42.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.42.0/bird-darwin-amd64.tar.gz"
      sha256 "ac412f23a36d1b3cc940a28d380b00aab33f0dce3c92fb6ea2038d93cf7fa363"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.42.0/bird-darwin-arm64.tar.gz"
      sha256 "3de95011fb76a2ee089a7e3232531fdc1b772d7b12705ddc10709a7ec59878ff"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.42.0/bird-linux-amd64.tar.gz"
      sha256 "e0c3e7d62af89ff00cf7a3a72b35f5963bac0a9bc348ad8e720e2bdfb1be7662"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.42.0/bird-linux-arm64.tar.gz"
      sha256 "3cd3072d036bf8fc0f724dd0b117a59dbc0774a4d3bee0dcfc844256d5f53cf6"

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

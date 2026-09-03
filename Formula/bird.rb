# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.66.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.66.1/bird-darwin-amd64.tar.gz"
      sha256 "77ea81e293708608c4b9b5087104015dbc2648ba6edb64d3500d74137aa6d8cf"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.66.1/bird-darwin-arm64.tar.gz"
      sha256 "41b6bb831b85f5a76a25a33e6da90ef41b5724069b6f140128eeefe85d8c54c3"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.66.1/bird-linux-amd64.tar.gz"
      sha256 "61828aaca3802a9b76b508f17dd0f5dbbe8aaaec9252a5834d1d49468bb6027d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.66.1/bird-linux-arm64.tar.gz"
      sha256 "46a2c9af6f47ea32b74dc11c6499a175564adb3fa36bea725e976f7d4985e79e"

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

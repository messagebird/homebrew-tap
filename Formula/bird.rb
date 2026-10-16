# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.121.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.121.0/bird-darwin-amd64.tar.gz"
      sha256 "faa732075f4dd199ddc506ff58a0ca9ebc51eb654786c6106140d05bf89b2264"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.121.0/bird-darwin-arm64.tar.gz"
      sha256 "2fd7aeaa2f303673342c985e66670f8a3327f587ac8cfd67324f0bcd18b295b4"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.121.0/bird-linux-amd64.tar.gz"
      sha256 "a1f38a1c0fa3144a217db15932dbb87849ab0822f8396b27fdf88292be23af55"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.121.0/bird-linux-arm64.tar.gz"
      sha256 "952a8cafca2e755fe0dba67ecdbfccaeb73a3291ad7b75d76dae0cdfc597fdd6"

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

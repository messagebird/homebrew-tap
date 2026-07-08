# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.5.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.5.7/bird-darwin-amd64.tar.gz"
      sha256 "373a94afd2341b830997822f1d2a4e9129207f9e20cd376d9d0ed3d5b2c4e80a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.5.7/bird-darwin-arm64.tar.gz"
      sha256 "ccc409d7f00389f9a94542335135f21f6cf209f80273cb01b7b6e0c80377fe56"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.5.7/bird-linux-amd64.tar.gz"
      sha256 "4a2f6ae60e8a670e5dc61c82304db2656b232c4d2b07f42ac68cab63babda56d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.5.7/bird-linux-arm64.tar.gz"
      sha256 "d42f7257750d143d3acdd552f83613364279536c57611e5adb6dc3cf5404aef2"

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

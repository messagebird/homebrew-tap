# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.18.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.18.3/bird-darwin-amd64.tar.gz"
      sha256 "962d469cb4914f6a908bcd8c0c91504e3ec7942701545acbef70828c31d69ab5"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.18.3/bird-darwin-arm64.tar.gz"
      sha256 "d2bda73799f164be2875425d77d51aff39f4626af556d8bbea1a5649694d2cf7"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.18.3/bird-linux-amd64.tar.gz"
      sha256 "ba90221882dc577aaf89a12182a5d0935f1f9fcd2ce42ad41272bce122098a1f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.18.3/bird-linux-arm64.tar.gz"
      sha256 "acbaef44ced075106b6b69f9f18c9424a06638f494f8b6fac05d716308e21d62"

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

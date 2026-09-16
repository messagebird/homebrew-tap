# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.81.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.81.0/bird-darwin-amd64.tar.gz"
      sha256 "aab3850b74a75b34326fd3e16543c91529040be40e3a607dcd593e0fd3f3cc40"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.81.0/bird-darwin-arm64.tar.gz"
      sha256 "b7b64674aa38b2c1994bef44c805ac1a6a4e8bd204617488a31984212b42b429"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.81.0/bird-linux-amd64.tar.gz"
      sha256 "887dd14747531761c49df852359fc11eaf377857f238f9e9939c6fcd9931a93b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.81.0/bird-linux-arm64.tar.gz"
      sha256 "854acf81fd70a3923d6858fa8740969ca9de98ed828fff1b8c6308f48aecff9e"

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

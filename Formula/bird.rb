# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.162.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.162.0/bird-darwin-amd64.tar.gz"
      sha256 "bd4621fe11bf48fc4240bb2d9187a99a24284cdad1c9d3e80224ffbf65e8e093"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.162.0/bird-darwin-arm64.tar.gz"
      sha256 "838dd733a9c5462860f27918b5b9b38a15ff571d7f191cfcc7878e9373641bb5"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.162.0/bird-linux-amd64.tar.gz"
      sha256 "2771707436114bf4e44ccda4331d29bf8101d3e3f3bf9578b76ffb42547c154c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.162.0/bird-linux-arm64.tar.gz"
      sha256 "4436cb3cbc9ccb1af243c17f9b2206342c7b785812316ea003597364dcbcbbd7"

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

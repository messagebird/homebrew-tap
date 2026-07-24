# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.13.1/bird-darwin-amd64.tar.gz"
      sha256 "cb0c2aa303735c6af023d9756aa7ac511d66b98d6505a11c06c425e668e9c263"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.13.1/bird-darwin-arm64.tar.gz"
      sha256 "3d396868c209cc1fb3db9cec4dd2cf66aceea7cce6c8eca132ceb1d9935f4cd8"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.13.1/bird-linux-amd64.tar.gz"
      sha256 "90d84271e9f278245a1be0489e3cc7bec56dfe8c65d23401c8ca62e40f45379c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.13.1/bird-linux-arm64.tar.gz"
      sha256 "a026c2daa21c5f0393753025a08e497701773e36ed8524962cf9041dcfd2f0a8"

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

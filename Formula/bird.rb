# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.141.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.141.0/bird-darwin-amd64.tar.gz"
      sha256 "e49434c3808936585ddfbdfa2866ae3ffb35ed4a30a301ad65d28cc6c24a7ee1"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.141.0/bird-darwin-arm64.tar.gz"
      sha256 "423c245122102b56f832a36df8bfe3d5ed68bdeb0f734aa32af412fd90924711"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.141.0/bird-linux-amd64.tar.gz"
      sha256 "585094668c7e54dc2a0e88cd6bda508eb9a8ccdbacca4dc63f5edc1b73a6ec70"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.141.0/bird-linux-arm64.tar.gz"
      sha256 "0c0fdbf0e578b0e074e61bdf0ca8d333997f9bc4f9c79bc26be0f7afe4269e58"

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

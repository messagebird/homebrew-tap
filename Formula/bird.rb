# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.5.4/bird-darwin-amd64.tar.gz"
      sha256 "0c692e90739cb7f68a97ee3ca17872eee9ea59c516fde525c1c1fd5bbc3bd9fd"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.5.4/bird-darwin-arm64.tar.gz"
      sha256 "b19a46cbea5333ca95134f9974b0c2362dd9ef8c550482fa0f45e3b6c718de23"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.5.4/bird-linux-amd64.tar.gz"
      sha256 "62cf50cea5ea6edaae061a5d58718b42656597acfe9a085562a55f91cb327f53"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.5.4/bird-linux-arm64.tar.gz"
      sha256 "7253062410bc2085218e7dd5e60d000e8211b90974cece097f173e976fbd7212"

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

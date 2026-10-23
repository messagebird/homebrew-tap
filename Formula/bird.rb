# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.135.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.135.0/bird-darwin-amd64.tar.gz"
      sha256 "81a06e1ed87826845352b2ed0dde3d507a43937eb87411056a58c507588e6abc"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.135.0/bird-darwin-arm64.tar.gz"
      sha256 "9f6d3bd61d3d960e8998226faec1e8ca5085cfc4a3cc7a9a2ee00ec00385885d"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.135.0/bird-linux-amd64.tar.gz"
      sha256 "2f49041b4d6317ef31071b3cadbefae9bf1a331f7606ab4f3f85fe586da858d7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.135.0/bird-linux-arm64.tar.gz"
      sha256 "126e6f87f2f26a3e8697363c15934fe7d48d3f9166c904df713284fb39dee86a"

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

# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.25.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.25.1/bird-darwin-amd64.tar.gz"
      sha256 "d7f97d3dd2ae0e24032badbb30bc955346e54e78151cd96e0db1158f9598f161"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.25.1/bird-darwin-arm64.tar.gz"
      sha256 "eea07bdd083422afc2138d14900fcc666e1d06e35dc55fc7395b60ca6dd23d83"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.25.1/bird-linux-amd64.tar.gz"
      sha256 "0bff3a11f9c9d321a446ca57803f6aa2ed05027afd793ef85f6608d4b64fa192"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.25.1/bird-linux-arm64.tar.gz"
      sha256 "1fae9d97841470c68fa6aa22cbe9a0dba5a8a4d200d439e25da3668a03c1853e"

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

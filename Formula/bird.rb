# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.83.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.83.0/bird-darwin-amd64.tar.gz"
      sha256 "0180f154ace262a637e78fb430ceaea3dc4f5e6c02bb58adac4fcc7a516e6fe2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.83.0/bird-darwin-arm64.tar.gz"
      sha256 "5e96c31bdd559c566b796940590842a08a48abe0429a5e6e7150c5c6edb3ff28"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.83.0/bird-linux-amd64.tar.gz"
      sha256 "f7e6b91ca759bacea3a007b95fe937b410cefb5f05a6b8ae40a8fce9e62f35b5"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.83.0/bird-linux-arm64.tar.gz"
      sha256 "adcc54ff4d8dd9883e988c2f59cdcb42bd86500c651f9ab27fbd7bacab204a45"

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

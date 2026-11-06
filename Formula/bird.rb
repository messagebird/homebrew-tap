# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.159.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.159.0/bird-darwin-amd64.tar.gz"
      sha256 "c7609f94735bdcdb36480708784adf35bee278e82d2eea4c98ed1bbc2246648d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.159.0/bird-darwin-arm64.tar.gz"
      sha256 "8fa63bc241cd521df70cc4155676fceaa1741d164443b86b44a7d75113ce091c"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.159.0/bird-linux-amd64.tar.gz"
      sha256 "2ff3c660a05056d4b5bd75645c9ff32b19ce44d7dd41753385c85822f5a4da61"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.159.0/bird-linux-arm64.tar.gz"
      sha256 "99749491df5eb16cc4ffd2444bd6a2c3c2415f71194621faa11a5c212861e68e"

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

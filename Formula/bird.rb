# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.8.2/bird-darwin-amd64.tar.gz"
      sha256 "76b09c01e061943b21166ffadee018b4c18465d82435e1ca676ac385423ec54d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.8.2/bird-darwin-arm64.tar.gz"
      sha256 "5a23f6bd6bb55b5b94a4464e40d0cb1a9a2f8240fee58c4c629b66c7ec1cb065"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.2/bird-linux-amd64.tar.gz"
      sha256 "cec2ee50edb889b0b5a3a8b2be789e356a23262f33518e62aebb04fdb95be2af"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.2/bird-linux-arm64.tar.gz"
      sha256 "9abd78d455ac55800eb0c5c00e2f6ddf4356b653a1af8a5ff9cb4b1b44f156e9"

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

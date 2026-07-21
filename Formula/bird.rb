# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.17/bird-darwin-amd64.tar.gz"
      sha256 "27229e4955cf60a1ae8bcad693d661631ede1d9e4bd2c08404454d33d6eb61b3"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.17/bird-darwin-arm64.tar.gz"
      sha256 "30813c2d40a52824049539a4bb8ddd333e5a0494be5d5a37ec8a3e95b4cf63e5"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.17/bird-linux-amd64.tar.gz"
      sha256 "7a2b78ecd1c3a6efd6bf4e84cba54b3e77959190cac3e3b71f1ef75e50d8bab0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.17/bird-linux-arm64.tar.gz"
      sha256 "dcc1637ff548be81716cbf00c7a102ddedf97d7d8b22a59b0c95e5d69e8fbf56"

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

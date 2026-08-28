# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.51.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.51.1/bird-darwin-amd64.tar.gz"
      sha256 "cf0202d078eac610bda120d7d73c64196207067b9a9568cecd5e4c50f538b31a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.51.1/bird-darwin-arm64.tar.gz"
      sha256 "fc0066110090c694031a04667809056fca0ad5c53686e6802794a1785a638e33"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.51.1/bird-linux-amd64.tar.gz"
      sha256 "037113bf1be180f89eab9483c886d0a04f35df964a330570450a173139cd359b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.51.1/bird-linux-arm64.tar.gz"
      sha256 "9d9ed5fbb6c54f5ddc603236c3bafa6ec3b06094f5fd3d038ef1de128bb7b71e"

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

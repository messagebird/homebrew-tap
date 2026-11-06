# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.158.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.158.0/bird-darwin-amd64.tar.gz"
      sha256 "a400971efe81045b7edddb001a85a10ec7784aa157de68ddbacd8a72232e0400"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.158.0/bird-darwin-arm64.tar.gz"
      sha256 "cd59b771c8cba10b9e204059130fe7d0c2e4ba35dfc7c7f80896bba4d680a604"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.158.0/bird-linux-amd64.tar.gz"
      sha256 "5d9774edfdb63c144781fa33b94539e910284736d0fd7e658b35fb628e36764e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.158.0/bird-linux-arm64.tar.gz"
      sha256 "e342e3572db1924be370d572dadd17262769b7515b381953732dc86ada9c7a21"

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

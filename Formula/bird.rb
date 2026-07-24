# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.13.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.13.2/bird-darwin-amd64.tar.gz"
      sha256 "2d6c1bc37664a5f7ba9f37992a800fa34bfbd3cc793bc8de208fe6490c8bb22a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.13.2/bird-darwin-arm64.tar.gz"
      sha256 "99fcaff5b8889b2ef1fe1e9e06d4e205e9767e19e3f27d6dbcacb69cd0f21b54"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.13.2/bird-linux-amd64.tar.gz"
      sha256 "a0a4fbc33110c6e25b9499a0a331a2dd18e5c2f54eb190bc50f33093ac3b290b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.13.2/bird-linux-arm64.tar.gz"
      sha256 "902396f663c78d30bd4e3e9a9e815565ead441e1d8cc497bf1f6455807b48f2c"

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

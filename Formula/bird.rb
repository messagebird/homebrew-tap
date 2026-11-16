# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.174.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.174.0/bird-darwin-amd64.tar.gz"
      sha256 "287859824a74889d1a2ec337bc1b9edd35067812483929c60884d692e58c19da"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.174.0/bird-darwin-arm64.tar.gz"
      sha256 "a9ac0bdc650df68b60a1f733e982b3765ffc906d1d7f7248c589c8f0914371a7"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.174.0/bird-linux-amd64.tar.gz"
      sha256 "ea1c0d234e179c19d6daf67e8723cc731c9074cefe65c1f4c785174e97f04677"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.174.0/bird-linux-arm64.tar.gz"
      sha256 "4de34103ec9fba73abe1d11fa3ef72169a29289ab28ea35883b447bbbac126ec"

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

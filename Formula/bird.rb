# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.16/bird-darwin-amd64.tar.gz"
      sha256 "94abf618ef498dcd17ce2e46030c0a260dace61f7174c61e4e195aaa90f67adb"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.16/bird-darwin-arm64.tar.gz"
      sha256 "73f64305a3b514c0b8433452180e9bd00d4ce7f2477db34c614d858b70ce8b3b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.16/bird-linux-amd64.tar.gz"
      sha256 "ec66eaca36bd5518d690fe771efa1fe1c79f3256d0a4965d539679497707d9eb"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.16/bird-linux-arm64.tar.gz"
      sha256 "ea5572146018e43bbc50da8b366da651c7fb2ec7e2924eef7d521108441e7304"

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

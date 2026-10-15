# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.117.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.117.0/bird-darwin-amd64.tar.gz"
      sha256 "0b9f10684640795d6c1e324fb891569185cda55b46bc410046f8b2846388ed6d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.117.0/bird-darwin-arm64.tar.gz"
      sha256 "8b8beb47e8481d516b1b5edf79b475fdecafb498df9e44c3e94416019609747a"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.117.0/bird-linux-amd64.tar.gz"
      sha256 "ac892b3ca99cc0f96d58b94b15e834735788c66cf794f2fd2f641ad472d1d950"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.117.0/bird-linux-arm64.tar.gz"
      sha256 "998bb924b08c0a74d88221674dc007d7ebd6811daa51e61db2af40d9cb1ef743"

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

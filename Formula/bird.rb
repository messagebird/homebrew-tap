# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.71.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.71.0/bird-darwin-amd64.tar.gz"
      sha256 "fbdd907ea390e10e5cc14ddb51ab60236870b82f3b57284ccecf029934a89be1"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.71.0/bird-darwin-arm64.tar.gz"
      sha256 "1ab33effd96e46f5b505e491104e6f5bdaac358afd79ec199741d6773bc36cee"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.71.0/bird-linux-amd64.tar.gz"
      sha256 "14ca0a688160f9473128f08d7a611e1f7a7d613a482b5d8b17c9ffe8290d87a9"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.71.0/bird-linux-arm64.tar.gz"
      sha256 "168c1237ef7cda367d78df72600b8065715feb9106fbf9345a9fc9661cfbf8e5"

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

# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.11.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.11.4/bird-darwin-amd64.tar.gz"
      sha256 "5a56f64ef25db39f5e3e09725246171f6f31aef453e0671287ad50860a32f91d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.11.4/bird-darwin-arm64.tar.gz"
      sha256 "6eb7282fe8e67dc48455ac0c57632ed488e4d4674a358bd98dc8c8cf8fa2f9cc"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.4/bird-linux-amd64.tar.gz"
      sha256 "b5dd4cdabbd6eaff454450ffb8f0f4b0a895620701dfb20dd54f0aa8a8b7736c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.11.4/bird-linux-arm64.tar.gz"
      sha256 "5a9a9e0cae8bca64b521a3a7ca73c06b9cd7755741c083be213713825b63df78"

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

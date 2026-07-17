# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.5/bird-darwin-amd64.tar.gz"
      sha256 "f356e513be46791a8d8bec368be2139658364bc9d279b70f3bf8e4647b648399"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.5/bird-darwin-arm64.tar.gz"
      sha256 "efd057b0bdd2556cd03a854f1698c6801b3138896ea82ed6b3d21183438c9ec3"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.5/bird-linux-amd64.tar.gz"
      sha256 "a35c9c6bb683b7b1330c039312834a1aa5481e358595c655f5d3b7d4ea9164a0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.5/bird-linux-arm64.tar.gz"
      sha256 "b8b44199b395a798a68346a76528381b695324f16d233b2edd25a77b34794951"

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

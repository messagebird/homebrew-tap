# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.143.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.143.0/bird-darwin-amd64.tar.gz"
      sha256 "7d1a377b0c9f42f7c55e173e5f8cd512c655e3dc3c08be67df682ec5a5717865"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.143.0/bird-darwin-arm64.tar.gz"
      sha256 "29b0973515320c872e00d91ea6be1fe1f8a8c266e49fff23a621fbbbcd41cca1"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.143.0/bird-linux-amd64.tar.gz"
      sha256 "f728a415b94a6d330d460ef5dce282e896f6e2cb2000d3604fe3243421752cbf"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.143.0/bird-linux-arm64.tar.gz"
      sha256 "43a771cd4b4fe46868ebe8d6a293b93140e8d295bae614dfb4f861f8351c214d"

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

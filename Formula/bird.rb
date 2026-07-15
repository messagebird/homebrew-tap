# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.8.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.8.4/bird-darwin-amd64.tar.gz"
      sha256 "4aef1ec20d8091e48d6d920faaab6409780313fe1e673463eace2ca6a593a99c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.8.4/bird-darwin-arm64.tar.gz"
      sha256 "2006f7833d76db854640288bb4e265a8afc9a8ba8daf4afc26f785680cc09204"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.4/bird-linux-amd64.tar.gz"
      sha256 "a975d9f6670c53cfbd7de2e97f35eb2cb67ddd79cd19da705b4d63e8d297f66a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.4/bird-linux-arm64.tar.gz"
      sha256 "15bf1cbd864cb94f6809468188035221b38098028e420c523b707009891fe372"

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

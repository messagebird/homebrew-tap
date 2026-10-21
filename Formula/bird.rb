# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.130.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.130.0/bird-darwin-amd64.tar.gz"
      sha256 "66f56f33f935497cb883ca5248911893f4eb2bbd2535c8e151f741a5e1ce86d2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.130.0/bird-darwin-arm64.tar.gz"
      sha256 "962e68246e84b768f2fe96175125fc49342a8a48c10d015354159f26ec0a7802"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.130.0/bird-linux-amd64.tar.gz"
      sha256 "acded079361918fbfd191de55fc32a57ea16df05d5b3637d14a0f289265b2a71"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.130.0/bird-linux-arm64.tar.gz"
      sha256 "3f53df1fed004fe8b1ae19f3e2f411ff9a568c38133e5a575c130b912761f735"

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

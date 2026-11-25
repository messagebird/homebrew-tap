# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.182.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.182.0/bird-darwin-amd64.tar.gz"
      sha256 "cffabea50a4af6c83b0b28a2179dbb2fac7715d8942a260eb8582b30a8be32f9"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.182.0/bird-darwin-arm64.tar.gz"
      sha256 "e23021333a633b63bb9ca9bd42ad98344cbe7a1da852555fa9d00032fbdabdcb"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.182.0/bird-linux-amd64.tar.gz"
      sha256 "53e4df1ab6c90a42ace799a1fc23324e6a7f06d548a4906280ce0ab4603286af"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.182.0/bird-linux-arm64.tar.gz"
      sha256 "ad94f857612c60d80dc769e13d834986a21c37c916968585207e94ef2aa91791"

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

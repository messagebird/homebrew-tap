# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.82.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.82.0/bird-darwin-amd64.tar.gz"
      sha256 "3104641fe78b8cbc40a74b49c4b1b635e17a1660ffb2e7ee3eb31dc85f64ba1d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.82.0/bird-darwin-arm64.tar.gz"
      sha256 "d3057f474cee05ad3e67fb61697b8a54aa5ff207ad5d52b6978ebde1a01d1b26"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.82.0/bird-linux-amd64.tar.gz"
      sha256 "9c465cffff40f603150fe8a7aac6a39790240791d541e4596c3bef38b27135e3"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.82.0/bird-linux-arm64.tar.gz"
      sha256 "7f9f6dfad92cde20a4956168fed21d9544ba12e7afd8155c378067106b517772"

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

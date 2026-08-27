# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.46.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.46.0/bird-darwin-amd64.tar.gz"
      sha256 "acf22f2407c627db437ec1cd228530a502d521de778f4eb83ade2b00a30e5355"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.46.0/bird-darwin-arm64.tar.gz"
      sha256 "c90bb1d30e9e99c1c1c0e122de64f1aff5b39e2611c892cfedef577e7e3f272f"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.46.0/bird-linux-amd64.tar.gz"
      sha256 "e5885cc1cf2d16d6651520099d9fb7106d7130eace4b94550e0c6e1094383504"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.46.0/bird-linux-arm64.tar.gz"
      sha256 "48c15483f5e97e5e4d5791409393db29d2e82242e3b00842043ec587d0fc301a"

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

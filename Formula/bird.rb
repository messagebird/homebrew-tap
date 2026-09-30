# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.100.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.100.0/bird-darwin-amd64.tar.gz"
      sha256 "a48b03e63468be5f0495a1b283dc815024b451ea1a546409105c9342495485b0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.100.0/bird-darwin-arm64.tar.gz"
      sha256 "eda9174fbfb777de020991480b72cdbcf0266268f35459e8bc5cbaa8d01252e9"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.100.0/bird-linux-amd64.tar.gz"
      sha256 "ffd49385f93ed64033722a48a2cf47f6195b51707da56543592eae762e55b716"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.100.0/bird-linux-arm64.tar.gz"
      sha256 "caa655ed4efd70b57a82831b1b16c8f0b04fb2891332a4a90f709e3cabe5c461"

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

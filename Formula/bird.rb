# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.91.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.91.2/bird-darwin-amd64.tar.gz"
      sha256 "95b3edfa54f8ab48e3f1afa74aa81b1747fb8d383b4a17b82e6bc69518d72c11"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.91.2/bird-darwin-arm64.tar.gz"
      sha256 "58c7ed50b7358fc7ed813de4e0c548b16dea41b0742d043c1230b7774f36e692"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.91.2/bird-linux-amd64.tar.gz"
      sha256 "d1cfac7bddeb99b3e1baf52f122ad456220a010fb75ee98146541bd30dd1f822"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.91.2/bird-linux-arm64.tar.gz"
      sha256 "af2a0d0e842f75b3654adbc98228100c94a8c868e1d00327a02d975e99519d42"

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

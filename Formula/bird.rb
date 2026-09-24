# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.91.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.91.1/bird-darwin-amd64.tar.gz"
      sha256 "9b8cf5a1cf394b42334cc99ea181d43a2278105d119eb7894043ac1702a45f22"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.91.1/bird-darwin-arm64.tar.gz"
      sha256 "43e99f29d56243433d5659bbe379f9702b42b8f479d33dc89ea1654a4927939b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.91.1/bird-linux-amd64.tar.gz"
      sha256 "e80cc5fb03525670684c9180d4c55075f78394b19a3ae41a163b6695b082d82c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.91.1/bird-linux-arm64.tar.gz"
      sha256 "5d35d25a4d2fd355b717a7479b2e7da16a113217e7f371a96a7899ae82c473e2"

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

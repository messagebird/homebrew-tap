# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.12/bird-darwin-amd64.tar.gz"
      sha256 "d327710a4e42c322654c9809488f3c1d416556cc6331bf486de7500e1802d338"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.12/bird-darwin-arm64.tar.gz"
      sha256 "b89800ce1c09332a1bc5a7230a22991ada6ee5c0869f8d59ae3ce2dcc6cc6c2b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.12/bird-linux-amd64.tar.gz"
      sha256 "46426bf7023aecf1ee7a5a8008aaa0d7cb2053d006eaf30926bb13e225ba3fdb"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.12/bird-linux-arm64.tar.gz"
      sha256 "79e1fd3b287863bc5945b70ba8c17e3f84e5eb039c66b333c0a7049e28738b24"

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

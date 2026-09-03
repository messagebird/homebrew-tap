# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.68.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.68.0/bird-darwin-amd64.tar.gz"
      sha256 "7d81c356be4bcf149c9e8ca65f387a9d205eeaf9e0ddfecf13c763c70f0a863b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.68.0/bird-darwin-arm64.tar.gz"
      sha256 "850a594badbcb85a20711bdc1cf028cbd546eb7b0554dab43acc3e1c20d9ebda"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.68.0/bird-linux-amd64.tar.gz"
      sha256 "aa0420d7853eea0a958569a7023dc71b52cd1261c196bcef6faba3acc8e268cd"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.68.0/bird-linux-arm64.tar.gz"
      sha256 "0fae4e16c77b0dec03fcfecec09539460bb762bcd6e54d802aff72beca47ce5c"

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

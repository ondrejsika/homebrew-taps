# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SluEdge < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.16.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.16.0/slu_v0.16.0_darwin_amd64.tar.gz"
      sha256 "ce5a1eb95200406478db63e52d75aa27f46100bc75c91a10b7500131d429658e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.16.0/slu_v0.16.0_darwin_arm64.tar.gz"
      sha256 "9710d8b7d43f46f1aed809627a966d42f2ec55c0bf6aef8c2091e509c451b1a8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.16.0/slu_v0.16.0_linux_amd64.tar.gz"
      sha256 "a037e175e00f8d16de84bfeb21837faa2dff4da535248e6406a122b555844ebd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.16.0/slu_v0.16.0_linux_arm64.tar.gz"
      sha256 "8232bdcf3f6e74031684783a7948e9787fdd440d9fd7be7f4d58f9666dbf2b76"
    end
  end

  conflicts_with "slu"

  def install
    bin.install "slu"
  end

  def caveats; <<~EOS
    How to use this binary: https://github.com/sikalabs/slu
  EOS
  end

  test do
    system "#{bin}/slu version"
  end
end

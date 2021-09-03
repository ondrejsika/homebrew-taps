# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SluEdge < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.13.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.13.0/slu_v0.13.0_darwin_amd64.tar.gz"
      sha256 "d92051d54f7bb441a76324e577d3409175d2766f3bce4acecac728cfc346149d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.13.0/slu_v0.13.0_darwin_arm64.tar.gz"
      sha256 "b385c8473eaedff285914df834f4be6944d00d5a83ce3309bbc288b3019e8a20"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.13.0/slu_v0.13.0_linux_amd64.tar.gz"
      sha256 "d4a31154a3fc8fdc32a296e1a7d40389825f412b12bdb983ff2a629b68432ef7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.13.0/slu_v0.13.0_linux_arm64.tar.gz"
      sha256 "b3d47289873b141a9d7d7eb249d5b8a0debf8648cd6a44bba0fb6bafa9aea65b"
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

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slu < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.14.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.14.0/slu_v0.14.0_darwin_amd64.tar.gz"
      sha256 "a9db6c8ab8cae757562061afb577912b37b2fc144ee4f258c241d11c3fd53ddf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.14.0/slu_v0.14.0_darwin_arm64.tar.gz"
      sha256 "25d107e8616b2e25356e169d6516cd3d40fe853381969f88b7f32de9666ed882"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.14.0/slu_v0.14.0_linux_amd64.tar.gz"
      sha256 "cede5995c54e3884b64eabd46df756e0f9c24da2ef36d34df6c7c51b21d00a3b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.14.0/slu_v0.14.0_linux_arm64.tar.gz"
      sha256 "224c8b5d7f7a2198ad1e2f68fe800b207ae2edf33b0368b78e13e70d47fc1714"
    end
  end

  conflicts_with "slu-edge"

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

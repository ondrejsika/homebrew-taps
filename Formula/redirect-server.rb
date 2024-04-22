# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RedirectServer < Formula
  desc "redirect-server"
  homepage "https://github.com/sikalabs/redirect-server"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/redirect-server/releases/download/v0.2.0/redirect-server_v0.2.0_darwin_arm64.tar.gz"
      sha256 "202fc0e2e890ec07f33153ca04f4511610d21a23b83f427de089529bd39103e3"

      def install
        bin.install "redirect-server"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/redirect-server/releases/download/v0.2.0/redirect-server_v0.2.0_darwin_amd64.tar.gz"
      sha256 "00e1c87f4b38979d01409ab23b23ea6bbd101d6a292b7d06ee0e797f55ed90ab"

      def install
        bin.install "redirect-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/redirect-server/releases/download/v0.2.0/redirect-server_v0.2.0_linux_arm64.tar.gz"
      sha256 "8464eb5aec1a3c4316c78a2c8774d0fa0abb7629ce496cad4bce5e013ed904cb"

      def install
        bin.install "redirect-server"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/redirect-server/releases/download/v0.2.0/redirect-server_v0.2.0_linux_amd64.tar.gz"
      sha256 "c75ef110983cbcb620541f15765840328aec63f2bc0a6ed7808f52392cae3142"

      def install
        bin.install "redirect-server"
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary: https://github.com/sikalabs/redirect-server
    EOS
  end

  test do
    system "#{bin}/redirect-server version"
  end
end

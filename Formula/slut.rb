# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slut < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slut"
  version "0.6.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sikalabs/slut/releases/download/v0.6.0/slut_v0.6.0_darwin_amd64.tar.gz"
    sha256 "cc494d7d3748f76b54904c37a89314dfcd0954752ada2890d8cf7aff287471bf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sikalabs/slut/releases/download/v0.6.0/slut_v0.6.0_darwin_arm64.tar.gz"
    sha256 "95b3e4ed0efe252f78e4d8465be019f0746d675bd6ad2d8453612d0cd3e7c7a9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sikalabs/slut/releases/download/v0.6.0/slut_v0.6.0_linux_amd64.tar.gz"
    sha256 "99479f843232895880d848893da8a77bec372c75e8113f7555367cb4bce3aa07"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/sikalabs/slut/releases/download/v0.6.0/slut_v0.6.0_linux_arm64.tar.gz"
    sha256 "c8df358868e9ddb878f79ba5cac7cf475fb1863900cb63d2d45ef25e1f1735d5"
  end

  def install
    bin.install "slut"
  end

  def caveats; <<~EOS
    How to use this binary: https://github.com/sikalabs/slut
  EOS
  end

  test do
    system "#{bin}/slut version"
  end
end

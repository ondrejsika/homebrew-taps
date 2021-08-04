# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slut < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slut"
  version "0.8.0-dev-1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sikalabs/slut/releases/download/v0.8.0-dev-1/slut_v0.8.0-dev-1_darwin_amd64.tar.gz"
    sha256 "ce4c8d1a88ecab644cdf8bf33ee1a678976176fc3504224af4daaef3711d709d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sikalabs/slut/releases/download/v0.8.0-dev-1/slut_v0.8.0-dev-1_darwin_arm64.tar.gz"
    sha256 "1b50223cd89a1ee41165e6e6f838a31c2f8a8c651bacf1449fa6a448edf74d66"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sikalabs/slut/releases/download/v0.8.0-dev-1/slut_v0.8.0-dev-1_linux_amd64.tar.gz"
    sha256 "7bad5f32b688e279dcc41918a5b36e61ed840c9751193084987e8e96bb5b0b51"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/sikalabs/slut/releases/download/v0.8.0-dev-1/slut_v0.8.0-dev-1_linux_arm64.tar.gz"
    sha256 "110289a0a551bd1982f8e9b478aaeacfe206b384af36bc61f313a187b386c6a6"
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

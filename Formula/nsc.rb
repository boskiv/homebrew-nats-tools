# This file was generated by GoReleaser. DO NOT EDIT.
class Nsc < Formula
  desc "A tool for creating NATS account and user access configurations"
  homepage "https://github.com/nats-io/nsc"
  version "0.5.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nats-io/nsc/releases/download/0.5.0/nsc-darwin-amd64.zip"
    sha256 "dcfd3c49f0aa276c4b1193282f52a48c50010f75e0021e263bae7dffeba27409"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/nsc/releases/download/0.5.0/nsc-linux-amd64.zip"
      sha256 "c56ec1f08a0ce53f122a64f1a64b0312eae9359faff22dd593ba1dbcb4de03f6"
    end
  end

  def install
    bin.install "nsc"
  end

  test do
    system "#{bin}/nsc --version"
  end
end

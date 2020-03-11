# This file was generated by GoReleaser. DO NOT EDIT.
class Nsc < Formula
  desc "A tool for creating NATS account and user access configurations"
  homepage "https://github.com/nats-io/nsc"
  version "0.4.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nats-io/nsc/releases/download/0.4.2/nsc-darwin-amd64.zip"
    sha256 "a3ffc6f218a34876344a6591ee09e241593ee8992088ae020cea58a654499a92"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nats-io/nsc/releases/download/0.4.2/nsc-linux-amd64.zip"
      sha256 "b53efcfd730a39605c1c8ca5e7fa6f466b94866e26c914f8b8ecd2b13d0925b9"
    end
  end

  def install
    bin.install "nsc"
  end

  test do
    system "#{bin}/nsc --version"
  end
end

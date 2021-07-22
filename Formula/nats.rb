# This file was generated by GoReleaser. DO NOT EDIT.
class Nats < Formula
  desc "NATS utility"
  homepage "https://github.com/nats-io/nats"
  version "0.0.25"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nats-io/natscli/releases/download/0.0.25/nats-0.0.25-darwin-amd64.zip"
    sha256 "6f0a8eab69d01853c1e55ad091547e6cd3e3f1f9fd53d067adebc2201be6fde6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/nats-io/natscli/releases/download/0.0.25/nats-0.0.25-linux-amd64.zip"
    sha256 "46f6e0da814a52fa9ec1ec0aa7262f9818451a3341aab4a61ff0010279fa0c50"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/nats-io/natscli/releases/download/0.0.25/nats-0.0.25-linux-arm6.zip"
    sha256 "814a74ea45bc81687b4aff6c6c8602eabaf22623766ecf799813e3144095e647"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/nats-io/natscli/releases/download/0.0.25/nats-0.0.25-linux-arm64.zip"
    sha256 "9f998830aeb0405f8d8c926da1b700d596ba5511c36404d85511312a9d81abb8"
  end

  def install
    bin.install "nats"
  end

  test do
    system "#{bin}/nats --version"
  end
end

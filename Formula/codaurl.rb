# typed: false
# frozen_string_literal: true

class Codaurl < Formula
  desc "CodaURL CLI - AI Agent & Developer URL Monitoring Tool"
  homepage "https://codaurl.com"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CodaSky/homebrew-tap/releases/download/v0.1.2/codaurl_darwin_arm64.tar.gz"
      sha256 "5b6db385a315ae07d535415f085bfc46a1a491972a52baf3a562cdbc612b1ff6"
    else
      url "https://github.com/CodaSky/homebrew-tap/releases/download/v0.1.2/codaurl_darwin_amd64.tar.gz"
      sha256 "dd5d3912c530311f9cd8ece6d3449ab75ead3fbe59d42efc74e4c4ef4a908999"
    end
  end

  on_linux do
    url "https://github.com/CodaSky/homebrew-tap/releases/download/v0.1.2/codaurl_linux_amd64.tar.gz"
    sha256 "f83381cc40c233287cf685ae5a0ea98617270c102f884d6200791f0724ee1653"
  end

  def install
    bin.install "codaurl"
  end

  test do
    system "#{bin}/codaurl", "--help"
  end
end

# typed: false
# frozen_string_literal: true

class Codaurl < Formula
  desc "CodaURL CLI - AI Agent & Developer URL Monitoring Tool"
  homepage "https://codaurl.com"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CodaSky/homebrew-tap/releases/download/v0.1.3/codaurl_darwin_arm64.tar.gz"
      sha256 "d7fd2c7bb83817c73f13ea205eb65c6078768fe36a586d74325424b0ae830e08"
    else
      url "https://github.com/CodaSky/homebrew-tap/releases/download/v0.1.3/codaurl_darwin_amd64.tar.gz"
      sha256 "8e554a6c9af576f35bc8b189a534c8428f8671bc63807023d6d09073fbfeb660"
    end
  end

  on_linux do
    url "https://github.com/CodaSky/homebrew-tap/releases/download/v0.1.3/codaurl_linux_amd64.tar.gz"
    sha256 "f678fcededa84aa1fae62fa9f4357a53bda14f8cc22939425860803543fce037"
  end

  def install
    bin.install "codaurl"
  end

  test do
    system "#{bin}/codaurl", "--help"
  end
end

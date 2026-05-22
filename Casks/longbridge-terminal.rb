cask "longbridge-terminal" do
  version "0.22.1"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.22.1/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "5f8a2b74bc55e2624183c61bdf18c635f8f8991c262f92f7be33907eb7ef12c4"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.22.1/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "4b4445c088e7a40517bbbb1a609426351c77c6ed23ab42d792b4c236005b390d"
  end

  desc "Longbridge Terminal CLI for US and HK stock market data and trading"
  homepage "https://github.com/longbridge/longbridge-terminal"

  binary "longbridge"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", staged_path]
  end

  caveats <<~EOS
    Get started by running:
      longbridge -h
  EOS
end

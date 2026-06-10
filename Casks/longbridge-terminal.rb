cask "longbridge-terminal" do
  version "0.23.1"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.23.1/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "076815906be9af799dbd4f04b79fd89472cf0b97505a9070744bf7345f3fe8f2"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.23.1/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "1bee1e88177653206a89a9854708a4dbc0dc603f5ffdee26faed6dd7f139fa2b"
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

cask "longbridge-terminal" do
  version "0.20.2"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.20.2/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "a6eb2aa00fd3386bd04e0f141fe8572ceca36c0d85f585fec3ef6d81631ca090"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.20.2/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "a775bd7fb9e0c42151a45a01c9e1b5a92c1b744c38e493e601d90b8455d4a46f"
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

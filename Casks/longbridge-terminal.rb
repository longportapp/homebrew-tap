cask "longbridge-terminal" do
  version "0.19.0"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.19.0/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "6a0411b7e4d7efa1518b053e0bc0721ad5a2c6c84be6c09e4d0e3e388d80d274"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.19.0/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "1e73d04d7f792ca46d67190d6583201a79281aa5e896ecd82f9628b5659774f4"
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

cask "longbridge-terminal" do
  version "0.22.0"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.22.0/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "73af3058cd47e8047e13e30d53f33d514b22ea557c92981859ffea3a04c92c4e"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.22.0/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "f987aebbe9d7d5548988efeb0818534b8508b466a85d61326bfceaf7e29e58e5"
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

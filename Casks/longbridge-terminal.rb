cask "longbridge-terminal" do
  version "0.22.2"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.22.2/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "f081058a919cc7eddcf8b7178960ef491d1566fc41b1bcd3739685561cfc0d9d"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.22.2/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "9010293af3d80c3b30d92ecd517707ba4ac4bbfd6a010df27d2feb7e132e263e"
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

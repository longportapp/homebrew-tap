cask "longport-terminal" do
  version "0.23.3"

  on_arm do
    url "https://github.com/longportapp/longport-terminal/releases/download/v0.23.3/longport-terminal-darwin-arm64.tar.gz"
    sha256 "94552903c6771920109202cf92945649a65c252595d648e4bc4d5723ac4b140c"
  end

  on_intel do
    url "https://github.com/longportapp/longport-terminal/releases/download/v0.23.3/longport-terminal-darwin-amd64.tar.gz"
    sha256 "f074a826467c77a1ef64d666382d1f7d0b8a2f65f1855df0fd3b1c7a152dff41"
  end

  desc "LongPort Terminal CLI for US and HK stock market data and trading"
  homepage "https://github.com/longportapp/longport-terminal"

  binary "longport"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", staged_path]
  end

  caveats <<~EOS
    Get started by running:
      longport -h
  EOS
end

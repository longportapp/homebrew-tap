cask "longport-terminal" do
  version "0.23.0"

  on_arm do
    url "https://github.com/longportapp/longport-terminal/releases/download/v0.23.3/longport-terminal-darwin-arm64.tar.gz"
    sha256 "a411fa26950ffbc1f31dae1ef8191263014e251dd1b7cd226ea7e1b6415760bc"
  end

  on_intel do
    url "https://github.com/longportapp/longport-terminal/releases/download/v0.23.3/longport-terminal-darwin-amd64.tar.gz"
    sha256 "747f068e73e81e74ee0fb6e63ace7a109a4146b8cc9255dae0ca4f4d160a9eb1"
  end

  desc "Longbridge Terminal CLI for US and HK stock market data and trading"
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

cask "longbridge-terminal" do
  version "0.22.3"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.22.3/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "b07fedd77b8537cb311045134d782c65778274c8ef6bc66516521cfc43677a1a"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.22.3/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "5148a0e8c2fa5333f2fa85a5160c72ccd471d49ecfc78f372d5daf8cd4f79063"
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

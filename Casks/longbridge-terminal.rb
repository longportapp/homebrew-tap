cask "longbridge-terminal" do
  version "0.19.2"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.19.2/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "bc655783825f906511093f6c4322dd233c264c6897170971f6686483e90dc453"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.19.2/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "bc4a273a90f21191fbd94d8e8a13dc96ab4fa37b414c1e4b2835ae01fa34fd79"
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

cask "longbridge-terminal" do
  version "0.10.1"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.10.1/longbridge-terminal-darwin-arm64.tar.gz"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                sha256 "d5f50f19202b18e157d8f4b3f60660302078ad4a492c3851bce63a57865911d0"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.10.1/longbridge-terminal-darwin-amd64.tar.gz"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                sha256 "5a8821df46bebe4587ff64de24e2d6901f71210887ffdc3d812c82293ddf58c6"
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

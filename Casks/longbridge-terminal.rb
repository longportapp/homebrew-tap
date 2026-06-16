cask "longbridge-terminal" do
  version "0.23.2"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.23.2/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "c74fb911eb86ff7db43838e4509fa66c0e24fb455da50584f188f3b895d49c1c"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.23.2/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "a8fd800d090d3f24eb348482dd6b7db64c87735c65c242d0645026e3c2d462f8"
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

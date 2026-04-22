cask "longbridge-terminal" do
  version "0.17.3"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.17.3/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "af042031ed9f701831dca9ff5a3565e550b0b1c860f656c66d513184cf60424b"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.17.3/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "8c48f5adbf2ddd7d0392a3b4cc67f4be8e11fd79ffc32c5d3740f72661f9baf0"
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

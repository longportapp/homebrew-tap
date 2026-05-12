cask "longbridge-terminal" do
  version "0.20.3"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.20.3/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "9768843747979b9caa3ba0d8ec10105ffeb9f090e148852acc5495f89917a2de"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.20.3/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "23477322418acdbd745b6b41b0b633e6b0e68150284587151591a6e175be0884"
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

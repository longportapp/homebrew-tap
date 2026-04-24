cask "longbridge-terminal" do
  version "0.17.4"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.17.4/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "8273032f5a3e468a93911d8e56fdd2e9cbb782f5e69480d0c87a47d5cba212c1"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.17.4/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "ad3bf1fd77eb4f0a29e174678d026cae944e8a994b527287e0ebe8927d762355"
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

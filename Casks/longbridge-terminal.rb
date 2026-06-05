cask "longbridge-terminal" do
  version "0.23.0"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.23.0/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "118b228d9a76f33bfd74ffd289e100cde2d757559e3ab00482f83dacb93a8e48"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.23.0/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "e778243403d67630ff5fdc6b6de74ee82962c37bb984afc15507e7571ac830ac"
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

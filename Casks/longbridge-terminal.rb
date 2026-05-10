cask "longbridge-terminal" do
  version "0.20.1"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.20.1/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "8e768ae20308ba72bfb764f8bf3d94b680b7561d1f896c9caae9bd549f55ef76"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.20.1/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "6d783c2f9dd2e7a1eb60d4d9aee2935730de2bcba8f9b9978a8420c07550befc"
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

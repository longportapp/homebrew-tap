cask "longbridge-terminal" do
  version "0.17.2"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.17.2/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "11be76a9b0327f57523cb562edd0c95da33f032d89755b8b050b181344204e3c"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.17.2/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "442fbd5fa5f45bb6a8462662ceba6e22c18366bad33270ff22d34e7b25bad43e"
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

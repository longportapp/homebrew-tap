cask "longbridge-terminal" do
  version "0.19.1"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.19.1/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "4f95943ff253c57fb0e0549e8441ae10b956ea5264ce7f486f6aa9052351c3dc"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.19.1/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "1e521904d8477416664e0d589b9a7ff7805ee21ec0c3c07154a46f62697de0aa"
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

cask "longbridge-terminal" do
  version "0.20.0"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.20.0/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "eec3aa986b3e91e1ca09bf02163163ea22c71adc7bdcd8ac9afc9eff67bbbe36"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.20.0/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "01bceb989ce0452217ef11c97a1b28cc18b6519cfe468c6e15012237d47381a9"
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

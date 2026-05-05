cask "longbridge-terminal" do
  version "0.19.2"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.19.2/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "90a79f855519d97dae8ae4904bbe816201df56ab05b5229e00783183f4cd7643"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.19.2/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "152227a49575b07280d3e1777beb798746b31b1390753e78966fdf0e00d6b395"
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

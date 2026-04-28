cask "longbridge-terminal" do
  version "0.18.0"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.18.0/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "963a3bd468f5c3866ca91f236c552f50cd31b8cada165ed2e6da39d22d1c5f09"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.18.0/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "dde955aa5e0df60be6c30eab01f39dc298b6dbb7d05ae5b2a7baed3d12545d7c"
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

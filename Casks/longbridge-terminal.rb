cask "longbridge-terminal" do
  version "0.10.0"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.10.0/longbridge-terminal-darwin-arm64.tar.gz"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                sha256 "42ce89957482e68792511643e9bfe63b0797850f93c60b14959af4328b8d9389"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.10.0/longbridge-terminal-darwin-amd64.tar.gz"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                sha256 "e1fafdbf71fb76a57d5aff562ca17b77aec7c1e5826c133001a51a7975f0770e"
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

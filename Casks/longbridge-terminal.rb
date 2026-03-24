cask "longbridge-terminal" do
  version "0.9.0"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.9.0/longbridge-terminal-darwin-arm64.tar.gz"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                sha256 "6e2845189008aa32c38f0bda3b9a1079906bf600f1c8206a916b89c608e77a15"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.9.0/longbridge-terminal-darwin-amd64.tar.gz"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                sha256 "29f5cfe5efbb4d4e571611df155db93d4412102638b188ad7e2662e178802c7a"
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

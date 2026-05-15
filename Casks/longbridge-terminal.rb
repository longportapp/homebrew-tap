cask "longbridge-terminal" do
  version "0.21.0"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.21.0/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "c9bc3d937216e22ce8b4d89e0b1bc8b24488f5a5fb71d7fc7853b55f6d14dd99"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.21.0/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "8fbb7fb75f3bdd6ffc0b5cdeba6ddb576b4dc5fddcde3ba1cd35e7a6636342e1"
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

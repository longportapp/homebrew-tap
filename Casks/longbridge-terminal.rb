cask "longbridge-terminal" do
  version "0.22.4"

  on_arm do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.22.4/longbridge-terminal-darwin-arm64.tar.gz"
    sha256 "6e0fc2a59b70ff0afa77a61763d2c10279fd86f60c379fe1688d09aa3cb7db92"
  end

  on_intel do
    url "https://github.com/longbridge/longbridge-terminal/releases/download/v0.22.4/longbridge-terminal-darwin-amd64.tar.gz"
    sha256 "021208985828bf786f2bed69d2271b44d86f0f8019de3ae46e2406f769c36a7e"
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

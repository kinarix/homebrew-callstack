cask "callstack" do
  version "0.9.2"

  on_arm do
    sha256 "9c739a0fd3edaecc714a2efa3eedb122776d068317bba1cc863fd3b857cec8fd"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.2/Callstack_0.9.2_aarch64.dmg"
  end

  on_intel do
    sha256 "9b12fb35c032d1da39c31504099e437aa20d99a360c0a0897df4149cc3e3f5c1"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.2/Callstack_0.9.2_x64.dmg"
  end

  name "Callstack"
  desc "Desktop REST API testing tool"
  homepage "https://github.com/kinarix/callstack"

  app "Callstack.app"

  postflight do
    system_command "xattr", args: ["-cr", staged_path / "Callstack.app"]
  end

  zap trash: [
    "~/Library/Application Support/callstack",
    "~/Library/Caches/com.kinarix.callstack",
  ]
end

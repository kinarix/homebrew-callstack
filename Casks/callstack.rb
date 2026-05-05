cask "callstack" do
  version "0.15.0"

  on_arm do
    sha256 "4b16910b4a7c033590c9886f8f0d601640d848b50944b969d454faef47cfa3ff"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.15.0/Callstack_0.15.0_aarch64.dmg"
  end

  on_intel do
    sha256 "9e51e94a0ee873ae9069071a93decf80ab4ebe442bf973a76ef94eab2536f27d"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.15.0/Callstack_0.15.0_x64.dmg"
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

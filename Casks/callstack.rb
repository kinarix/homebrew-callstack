cask "callstack" do
  version "0.3.3"

  on_arm do
    sha256 "0492aa6b5486089c73bda78b6b0a17fcfe9be72bd1fb0b783cdc8064e1a5622e"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.3.3/Callstack_0.3.3_aarch64.dmg"
  end

  on_intel do
    sha256 "e94a9ad561eae2beae081753318cf0ce2a6dc61a597352ac29f11f1d252f9507"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.3.3/Callstack_0.3.3_x64.dmg"
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

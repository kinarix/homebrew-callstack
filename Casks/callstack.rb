cask "callstack" do
  version "0.25.0"

  on_arm do
    sha256 "1f9d5ecefebe3ed8436dfd1b7ebf18a1d1cbf3308f5640547aa7a10ea7a6db67"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.25.0/Callstack_0.25.0_aarch64.dmg"
  end

  on_intel do
    sha256 "16658019dcb44f0e1db0f5478a7b66c0026c03f93d4e419f76f2d102dcffc051"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.25.0/Callstack_0.25.0_x64.dmg"
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

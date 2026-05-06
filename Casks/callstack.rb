cask "callstack" do
  version "0.16.0"

  on_arm do
    sha256 "2700228b65e929250634bfe364cef984b9dc446adfe4ed1fc7b1a5d54f3ad258"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.16.0/Callstack_0.16.0_aarch64.dmg"
  end

  on_intel do
    sha256 "7da0c461d345458a8bf71f432b3b9960ddf4349e5fb2395f54b25ea286b3d231"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.16.0/Callstack_0.16.0_x64.dmg"
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

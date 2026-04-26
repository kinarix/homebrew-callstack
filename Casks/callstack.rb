cask "callstack" do
  version "0.9.4"

  on_arm do
    sha256 "4f98640c2419d0198c44d060401fdc54969f93719194cd4ea41bd0567680db3c"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.4/Callstack_0.9.4_aarch64.dmg"
  end

  on_intel do
    sha256 "c5339477a358967885cbb8608368415fb0edb6de9243b76ca96600e2f80fdee4"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.4/Callstack_0.9.4_x64.dmg"
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

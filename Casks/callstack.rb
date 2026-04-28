cask "callstack" do
  version "0.9.8"

  on_arm do
    sha256 "572c521f705e816a6b234f1b827df79225a7d9a4340143c17b4f336bd21f16ff"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.8/Callstack_0.9.8_aarch64.dmg"
  end

  on_intel do
    sha256 "eedcb4b51a6e95abe47ce5adee196d4d844bd0b545c478c376412f018905d2aa"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.8/Callstack_0.9.8_x64.dmg"
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

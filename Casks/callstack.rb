cask "callstack" do
  version "0.4.2"

  on_arm do
    sha256 "be2ec6cac67df8294ac6d0615d1cca7ca270f1967c0dcbe777729add48571b6e"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.4.2/Callstack_0.4.2_aarch64.dmg"
  end

  on_intel do
    sha256 "49efbf98cf3cc44b2b651f504c145bbca6af281f51c3c50213718440035ae920"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.4.2/Callstack_0.4.2_x64.dmg"
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

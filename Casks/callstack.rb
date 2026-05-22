cask "callstack" do
  version "0.20.0"

  on_arm do
    sha256 "86c85121e3eca142b111ef85e38c265d9eed4b706e69c81347a51530ac6c7f18"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.20.0/Callstack_0.20.0_aarch64.dmg"
  end

  on_intel do
    sha256 "15bf9ce144582f4b815029a8779e098599b07867506aec57e7bd8dec3ed3e8a4"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.20.0/Callstack_0.20.0_x64.dmg"
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

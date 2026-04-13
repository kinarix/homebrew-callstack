cask "callstack" do
  version "0.3.4"

  on_arm do
    sha256 "dcaa70609ff6a0581a5608244b022e6e4ea7dae54c5691fde47a9495740e4732"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.3.4/Callstack_0.3.4_aarch64.dmg"
  end

  on_intel do
    sha256 "c11a807d45752515e4daf802fe85242d9754d4954bec04cf3520d2b4177205a3"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.3.4/Callstack_0.3.4_x64.dmg"
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

cask "callstack" do
  version "0.5.6"

  on_arm do
    sha256 "ae544228b0b4b8319ac65804a7afc3ff693088b613af77e260178463ac354c60"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.5.6/Callstack_0.5.6_aarch64.dmg"
  end

  on_intel do
    sha256 "b362dc244b3caac99195b7916393e59bc2b6f89f4638539146160f54116c5cad"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.5.6/Callstack_0.5.6_x64.dmg"
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

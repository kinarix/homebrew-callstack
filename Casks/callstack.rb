cask "callstack" do
  version "Callstack-v0.3.2"

  on_arm do
    sha256 "f968426b7074f1a0a8a43ce8fd1dc5dd0d0d68bd619ae2dd0d491f95441912e2"
    url "https://github.com/kinarix/callstack/releases/download/vCallstack-v0.3.2/Callstack_Callstack-v0.3.2_aarch64.dmg"
  end

  on_intel do
    sha256 "e90133ccb6e69a1a8a88a75e42421446e4e29a4846a9b010f74f72b1b6f3337f"
    url "https://github.com/kinarix/callstack/releases/download/vCallstack-v0.3.2/Callstack_Callstack-v0.3.2_x64.dmg"
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

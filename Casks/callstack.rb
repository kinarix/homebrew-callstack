cask "callstack" do
  version "0.7.3"

  on_arm do
    sha256 "9c17cb4a13207be70cb9abf53c53e21b66b4d8d0e7743713edf39028267d0340"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.7.3/Callstack_0.7.3_aarch64.dmg"
  end

  on_intel do
    sha256 "c4574e266b40cbff170134b580016ff4d32bca23d1390e7d19989d4d5156cc0d"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.7.3/Callstack_0.7.3_x64.dmg"
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

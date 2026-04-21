cask "callstack" do
  version "0.9.1"

  on_arm do
    sha256 "2e2cabcc153fd15e176494fb748484e6c4bf315073cd7efdbc139d3c6bc85182"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.1/Callstack_0.9.1_aarch64.dmg"
  end

  on_intel do
    sha256 "65d386e65115e368c1db1617a73ae90b37e760ffe6d964170259a19f0bc94dd5"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.1/Callstack_0.9.1_x64.dmg"
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

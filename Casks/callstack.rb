cask "callstack" do
  version "0.20.1"

  on_arm do
    sha256 "bd7cb195d8ebdc0591605efdabf83d96aa064a3af30a18a7175c1b6072c773c5"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.20.1/Callstack_0.20.1_aarch64.dmg"
  end

  on_intel do
    sha256 "ba316ae66361c105597fb84f62ab032d4604f3bb8e9c3e43a1ffe8f1da998a3b"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.20.1/Callstack_0.20.1_x64.dmg"
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

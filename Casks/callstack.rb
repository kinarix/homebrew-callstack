cask "callstack" do
  version "0.20.2"

  on_arm do
    sha256 "271b28e2ee45c1c2dd7f509f71dee879e02c818ec7ed0e88723eea416c505f07"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.20.2/Callstack_0.20.2_aarch64.dmg"
  end

  on_intel do
    sha256 "98e6864efba9864c25be3c146108d620d301dfe2209d957c287bb4988ef9a82a"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.20.2/Callstack_0.20.2_x64.dmg"
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

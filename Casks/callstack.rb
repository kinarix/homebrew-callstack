cask "callstack" do
  version "0.29.0"

  on_arm do
    sha256 "cf462ba14dd3333ac32d49181479afa3a8f05cc492047f492e9ca3eb7e82ce52"
    url "https://github.com/kinarix/callstack-releases/releases/download/Callstack-v0.29.0/Callstack_0.29.0_aarch64.dmg"
  end

  on_intel do
    sha256 "14edda31bf45ae2e9b6f47b961b38d66e86accdcfa6fa229571f7a0bb73b1ece"
    url "https://github.com/kinarix/callstack-releases/releases/download/Callstack-v0.29.0/Callstack_0.29.0_x64.dmg"
  end

  name "Callstack"
  desc "Desktop REST API testing tool"
  homepage "https://github.com/kinarix/callstack-releases"

  app "Callstack.app"

  postflight do
    system_command "xattr", args: ["-cr", staged_path / "Callstack.app"]
  end

  zap trash: [
    "~/Library/Application Support/callstack",
    "~/Library/Caches/com.kinarix.callstack",
  ]
end

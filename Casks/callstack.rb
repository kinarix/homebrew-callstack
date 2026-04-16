cask "callstack" do
  version "0.6.1"

  on_arm do
    sha256 "1cb6975f9119eef83cc2df0c7870b2f216a4ec1eba1896858ae46dc9701d2784"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.6.1/Callstack_0.6.1_aarch64.dmg"
  end

  on_intel do
    sha256 "6da34a5672b732cca35b093f2c7b3ebb853f3709a61ceabb07eb3b42ca55f26c"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.6.1/Callstack_0.6.1_x64.dmg"
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

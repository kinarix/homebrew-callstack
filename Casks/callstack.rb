cask "callstack" do
  version "0.9.7"

  on_arm do
    sha256 "4b01576b25daf65857d762aa0cfd2b8f30ddfb83f00d4034ab2fe87b0f10d371"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.7/Callstack_0.9.7_aarch64.dmg"
  end

  on_intel do
    sha256 "53371c50bce6f2538fd66053f6bfc19b0cbe044bf098e503342ffb0b5ce74e24"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.7/Callstack_0.9.7_x64.dmg"
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

cask "callstack" do
  version "0.7.0"

  on_arm do
    sha256 "03de5604a1fe560a9e82e8af6ec7ec7eca7ee4b97b437711eae52bee1bdbec26"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.7.0/Callstack_0.7.0_aarch64.dmg"
  end

  on_intel do
    sha256 "dc0e43de957c3a421add89f445f024bbf4ff550c4f8c0cfb681bc911ec802b2e"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.7.0/Callstack_0.7.0_x64.dmg"
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

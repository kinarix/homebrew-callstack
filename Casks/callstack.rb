cask "callstack" do
  version "0.7.5"

  on_arm do
    sha256 "8f05140ea4f9f0d95f5060d7fae2c9f7025f5db1dfb57278a0b6f51de13f284e"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.7.5/Callstack_0.7.5_aarch64.dmg"
  end

  on_intel do
    sha256 "d86d406d570c0c26a6efe8354284ac10c4b3cebad70114f710579933fe29b0da"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.7.5/Callstack_0.7.5_x64.dmg"
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

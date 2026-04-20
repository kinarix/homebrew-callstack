cask "callstack" do
  version "0.8.0"

  on_arm do
    sha256 "a34fd0641804307f2b3e7ba6e19cf0681ffbfa88cf6a9553f933bed17ea42672"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.8.0/Callstack_0.8.0_aarch64.dmg"
  end

  on_intel do
    sha256 "e7740d1ad26652f6dd1db55a7017dbc7e518daad658d9ca3e8cda9f77e3f78b3"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.8.0/Callstack_0.8.0_x64.dmg"
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

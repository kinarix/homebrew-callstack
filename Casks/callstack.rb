cask "callstack" do
  version "0.21.0"

  on_arm do
    sha256 "82e06b3c08d5926e4455f5e19a8edcce7fd700055ca9c6a4a24c33d6cd68bdb5"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.21.0/Callstack_0.21.0_aarch64.dmg"
  end

  on_intel do
    sha256 "74343e10ca1566b852fc04a4bf83c2f7dd6b72d8d09a479d8a83ad1f37e6bac4"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.21.0/Callstack_0.21.0_x64.dmg"
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

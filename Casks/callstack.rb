cask "callstack" do
  version "0.9.6"

  on_arm do
    sha256 "0b43dea1f56bf65d2cd82325b4c18764357c3c5fccf677c9e37a39a8a6c8c7dd"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.6/Callstack_0.9.6_aarch64.dmg"
  end

  on_intel do
    sha256 "7c6bc1a6fcec09b8b61dcfd1ed9637f989e110423d456eab46932a10bbe11ae4"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.6/Callstack_0.9.6_x64.dmg"
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

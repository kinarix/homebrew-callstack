cask "callstack" do
  version "0.7.1"

  on_arm do
    sha256 "026e1d129dc15ea65f5d8bc575729e3f9e100c99685f980f7572854d3f55e4e0"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.7.1/Callstack_0.7.1_aarch64.dmg"
  end

  on_intel do
    sha256 "1bca431d269196f504084aca81bf4f8db4df92eb236dd82d3cd410f230399c35"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.7.1/Callstack_0.7.1_x64.dmg"
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

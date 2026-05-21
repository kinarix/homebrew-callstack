cask "callstack" do
  version "0.19.0"

  on_arm do
    sha256 "bd8812f5b0a657eff3dea0f10c3f157e5cb522b9be5c33b93890ac98bb8064d2"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.19.0/Callstack_0.19.0_aarch64.dmg"
  end

  on_intel do
    sha256 ""
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.19.0/Callstack_0.19.0_x64.dmg"
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

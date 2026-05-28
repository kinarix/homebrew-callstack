cask "callstack" do
  version "0.23.1"

  on_arm do
    sha256 "cae32fa8ccbfbcfa110945bb0e9b0693a02111f9fd0048bfa7dd2cec4e0d4e85"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.23.1/Callstack_0.23.1_aarch64.dmg"
  end

  on_intel do
    sha256 ""
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.23.1/Callstack_0.23.1_x64.dmg"
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

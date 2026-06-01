cask "callstack" do
  version "0.25.1"

  on_arm do
    sha256 "ceb238f011197882ade83fb5393e290b801399aadc02d3dbb9c939ef9215f033"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.25.1/Callstack_0.25.1_aarch64.dmg"
  end

  on_intel do
    sha256 "9cec838041afd1f131234f0b2e183d43cefc242262a157831920340875bdeb40"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.25.1/Callstack_0.25.1_x64.dmg"
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

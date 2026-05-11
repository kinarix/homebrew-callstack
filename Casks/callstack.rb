cask "callstack" do
  version "0.17.3"

  on_arm do
    sha256 "9b2cf2fae9701342e8314ee6287fef3c2ed04a6eb22b6364053bc49eaf04fc4f"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.17.3/Callstack_0.17.3_aarch64.dmg"
  end

  on_intel do
    sha256 "3b2c53bdf1d20045dd5bf36a2b41a5c1f56295b915481ab860de94635116a2e7"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.17.3/Callstack_0.17.3_x64.dmg"
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

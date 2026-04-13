cask "callstack" do
  version "0.3.5"

  on_arm do
    sha256 "e8082cbe9ebb795e2925d19fb40965e5fa378920019b55b9bcd68df241837bab"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.3.5/Callstack_0.3.5_aarch64.dmg"
  end

  on_intel do
    sha256 "be28ed9c0bb6421930d4d4096659a7a6f6f1e9abc7e46f81a212e9e5c256a415"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.3.5/Callstack_0.3.5_x64.dmg"
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

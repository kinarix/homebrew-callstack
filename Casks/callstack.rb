cask "callstack" do
  version "0.19.2"

  on_arm do
    sha256 "e1f5859f6daf318efeb7f4d8c7ff2b1a1dbf5caf95d888ae49e8f955b631290e"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.19.2/Callstack_0.19.2_aarch64.dmg"
  end

  on_intel do
    sha256 "953076d7f8b323e4e61e967ffab2c16976cbee6fcc2728e9289b168881c354b3"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.19.2/Callstack_0.19.2_x64.dmg"
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

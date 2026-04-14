cask "callstack" do
  version "0.4.3"

  on_arm do
    sha256 "188d6188d0ab85f86d80d2914c62d026185096e42ccd6ed2fa47470b10da37a0"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.4.3/Callstack_0.4.3_aarch64.dmg"
  end

  on_intel do
    sha256 "cc800b9449d51175ed637850b4b39175dc499e501c9f274ae2219e8cc9c8812d"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.4.3/Callstack_0.4.3_x64.dmg"
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

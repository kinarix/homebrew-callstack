cask "callstack" do
  version "0.4.1"

  on_arm do
    sha256 "cc538576868bb8b574bf5d03c44400acfcc6a2be657e9edb93bee7382f206185"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.4.1/Callstack_0.4.1_aarch64.dmg"
  end

  on_intel do
    sha256 "bac097ef367f731530cd3ae21bffae76a78d86e1834dd8f39b5d80d781c3b488"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.4.1/Callstack_0.4.1_x64.dmg"
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

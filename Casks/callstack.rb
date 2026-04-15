cask "callstack" do
  version "0.5.2"

  on_arm do
    sha256 "e96fb3de56d573f0e966fad25999dca29dd25e6b9df0c2aeb92519fed8c81f15"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.5.2/Callstack_0.5.2_aarch64.dmg"
  end

  on_intel do
    sha256 "8848a88359902ccf2fbbf368483c1c48ccefcfec1fcfb7cc55cb56b534ea8e1e"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.5.2/Callstack_0.5.2_x64.dmg"
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

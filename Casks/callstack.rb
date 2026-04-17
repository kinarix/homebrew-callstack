cask "callstack" do
  version "0.7.2"

  on_arm do
    sha256 "f8e7ab1896f7878fc626cd4a0b1d88197071dd6a704102a7d93315a9ba19f4eb"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.7.2/Callstack_0.7.2_aarch64.dmg"
  end

  on_intel do
    sha256 "b9a706b79bfac7ecb1d7e900985271dd6ddaa4e5fbac75bfd8315a279dabc162"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.7.2/Callstack_0.7.2_x64.dmg"
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

cask "callstack" do
  version "0.9.10"

  on_arm do
    sha256 "a0790179232da696491c4be936090d82daca26d5b56d205dd6a140c2afeef445"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.10/Callstack_0.9.10_aarch64.dmg"
  end

  on_intel do
    sha256 "c8796aa4ed75137c7dbd747610166d66ec2d375744f48f733cb057327e1d8e1d"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.10/Callstack_0.9.10_x64.dmg"
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

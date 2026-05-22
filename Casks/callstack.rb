cask "callstack" do
  version "0.19.1"

  on_arm do
    sha256 "d501c6064da6c5c92c3316cf091540c7e05b51232631e42b6f8cb7f07ee03eca"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.19.1/Callstack_0.19.1_aarch64.dmg"
  end

  on_intel do
    sha256 "420fd89acff0a5e2c352e4f48d3a76d124b3c8d3d3b02ead78c7cf1e9e196632"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.19.1/Callstack_0.19.1_x64.dmg"
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

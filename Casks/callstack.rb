cask "callstack" do
  version "0.11.0"

  on_arm do
    sha256 "ad0cdb7ff3c5bd7eb2cc2952ad5c81b5c12536548abc7009b08b950ff8d0d872"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.11.0/Callstack_0.11.0_aarch64.dmg"
  end

  on_intel do
    sha256 "4f4c4f35d6790296447cf5fd25d816f15b8bb1b5a7e79582c89c894dff289e75"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.11.0/Callstack_0.11.0_x64.dmg"
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

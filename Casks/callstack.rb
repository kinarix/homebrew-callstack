cask "callstack" do
  version "0.22.1"

  on_arm do
    sha256 "8a98c0c97d0f11178b9cd42eec50e6281738a1facd2ee92d6e86becac289462f"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.22.1/Callstack_0.22.1_aarch64.dmg"
  end

  on_intel do
    sha256 "99dad4c5a728af285723584d71d72e18968f6c4ef96cf52ef2a5a21455410fda"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.22.1/Callstack_0.22.1_x64.dmg"
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

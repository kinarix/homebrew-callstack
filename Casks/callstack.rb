cask "callstack" do
  version "0.27.0"

  on_arm do
    sha256 "ddda2b9f1f1cc41d25ac2f675a7775d467617d08f517d43e0c0b93238c2eff2d"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.27.0/Callstack_0.27.0_aarch64.dmg"
  end

  on_intel do
    sha256 "e49d4709c21f6227f69cf2394166037889b6eea7408e318f6b823563dcd4bb89"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.27.0/Callstack_0.27.0_x64.dmg"
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

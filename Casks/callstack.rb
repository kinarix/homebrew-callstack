cask "callstack" do
  version "0.10.0"

  on_arm do
    sha256 "9bf4699466820cd4d23a70eae12fb7e0c4287705f59e2fb04dc44deccc6a3628"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.10.0/Callstack_0.10.0_aarch64.dmg"
  end

  on_intel do
    sha256 "02ad2330d1d6db84a798075757a73e508b24e68ba8942210d24a9fd7f7cf6cef"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.10.0/Callstack_0.10.0_x64.dmg"
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

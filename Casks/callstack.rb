cask "callstack" do
  version "0.7.4"

  on_arm do
    sha256 "4d5b4a6b7f35d2fe2f8fc793da5232213b57bcc5d37730f5d7d8bf159f249712"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.7.4/Callstack_0.7.4_aarch64.dmg"
  end

  on_intel do
    sha256 "7d0f71964c5505be41aec58cccec784894690edceda162ef0bcf402676d5e924"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.7.4/Callstack_0.7.4_x64.dmg"
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

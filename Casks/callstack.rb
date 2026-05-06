cask "callstack" do
  version "0.17.1"

  on_arm do
    sha256 "51141be43d293b07ef733653ab701e67c6900a7f5450b05b55e51fe8f89959b0"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.17.1/Callstack_0.17.1_aarch64.dmg"
  end

  on_intel do
    sha256 "74893b1b98c98d5f9548d981d80d8a738d69f8f6f414c44ce1873fbfcba4d628"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.17.1/Callstack_0.17.1_x64.dmg"
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

cask "callstack" do
  version "0.4.0"

  on_arm do
    sha256 "69f1627612b270df38fee658622d64e861be608b25c67adc8f35652a1588473e"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.4.0/Callstack_0.4.0_aarch64.dmg"
  end

  on_intel do
    sha256 "c35a0a2189c63c800a36ce57ed1266597343fbfb7b3730eec35ed7a844d07047"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.4.0/Callstack_0.4.0_x64.dmg"
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

cask "callstack" do
  version "0.32.0"

  on_arm do
    sha256 "a7fc9d25768ea87c2323b8b835dc3cfb68ff3ebacb9b761f156de829b0b40750"
    url "https://github.com/kinarix/callstack-releases/releases/download/Callstack-v0.32.0/Callstack_0.32.0_aarch64.dmg"
  end

  on_intel do
    sha256 "16d941ba5c50281390dd011af3238ffd1ff622520bff265993449adda536849e"
    url "https://github.com/kinarix/callstack-releases/releases/download/Callstack-v0.32.0/Callstack_0.32.0_x64.dmg"
  end

  name "Callstack"
  desc "Desktop REST API testing tool"
  homepage "https://github.com/kinarix/callstack-releases"

  app "Callstack.app"

  postflight do
    system_command "xattr", args: ["-cr", staged_path / "Callstack.app"]
  end

  zap trash: [
    "~/Library/Application Support/callstack",
    "~/Library/Caches/com.kinarix.callstack",
  ]
end

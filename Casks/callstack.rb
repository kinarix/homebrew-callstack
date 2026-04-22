cask "callstack" do
  version "0.9.3"

  on_arm do
    sha256 "0f6acd85d7b76e63a6cd4c512dea3589ebde2ddac2d74c8a47257ab93aec416b"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.3/Callstack_0.9.3_aarch64.dmg"
  end

  on_intel do
    sha256 "9709aac53ac072f091048dbc1b73417b7cb1d0bac77eb57c490d140547ea5c2a"
    url "https://github.com/kinarix/callstack/releases/download/Callstack-v0.9.3/Callstack_0.9.3_x64.dmg"
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

cask "dockside" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.3"
  sha256 arm:   "c4a9b3bbe25117c227eb0a420fc202813f81fa3e6785799039c048f55c55cfdf",
         intel: "4bfa8887139e151ee7d33bcd99909e4603a060b0311a0469accd21502dd5e9ed"

  url "https://github.com/docker/dockside-releases/releases/download/v#{version}/dockside_Darwin_#{arch}.tar.gz"
  name "Dockside"
  desc "Installs the Dockside console and provisionerd into a cloud account"
  homepage "https://github.com/docker/dockside-releases"

  depends_on macos: :monterey

  binary "dockside"

  zap trash: "~/.dockside"
end

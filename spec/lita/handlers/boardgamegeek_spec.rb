require "spec_helper"

describe Lita::Handlers::Boardgamegeek, lita_handler: true do
  it { is_expected.to route_command("bgg me") }
  it { is_expected.to route_command("bgg").to(:search) }
end

require "spec_helper"

describe Lita::Handlers::Boardgamegeek, lita_handler: true do

  it "routes bgg me agricola" do
    expect(subject).to route_command("bgg me agricola").to(:search)
  end

  it "routes bgg agricola" do
    expect(subject).to route_command("bgg agricola").to(:search)
  end

end

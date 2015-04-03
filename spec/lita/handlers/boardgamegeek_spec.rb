require "spec_helper"

describe Lita::Handlers::Boardgamegeek, lita_handler: true do

  it { is_expected.to route_command("bgg me agricola").to(:search) }
  it { is_expected.to route_command("bgg agricola").to(:search) }

  describe '#search' do
    before(:each) do
      allow(subject).to receive(:game_id).and_return(1)
    end

    it "replies with the search term" do
      send_command("bgg me agricola")
      expect(replies.first).to eq("agricola: http://www.boardgamegeek.com/boardgame/1")
    end
  end

end

require 'bgg-api'

module Lita
  module Handlers
    class Boardgamegeek < Handler
      route(/bgg(?: me)?\s+(.+)/, :search, command: true, help: {
        "bgg GAME" => "returns link to BGG entry for GAME",
        "bgg me GAME" => "returns link to BGG entry for GAME"
      })

      def search(response)
        term = response.match_data[1]
        id = game_id(term)
        response.reply "#{term}: http://www.boardgamegeek.com/boardgame/#{id}"
      end

      def game_id(name)
        bgg = BggApi.new
        result = bgg.search(query: name, type: 'boardgame')
        result["item"].first["id"]
      end
    end

    Lita.register_handler(Boardgamegeek)
  end
end

module Lita
  module Handlers
    class Boardgamegeek < Handler
      route(/^bgg(?: me)\s+(.+)/i, :search, command: true)

      def search

      end
    end

    Lita.register_handler(Boardgamegeek)
  end
end

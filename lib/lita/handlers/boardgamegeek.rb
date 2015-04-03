module Lita
  module Handlers
    class Boardgamegeek < Handler
      route(/bgg(?: me)?\s+(.+)/, :search, command: true)

      def search(response)

      end
    end

    Lita.register_handler(Boardgamegeek)
  end
end

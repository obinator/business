module Business
  module Handlers
    class Sales
      def initialize
        @data = Data::Sales.new
      end
    end
  end
end

module Business
  module Handlers
    class Sales
      include Workbench::Handler

      def initialize
        @data = Data::Sales.new
      end

      def handle_order_received(message)
        @data.product_ids_in_order = message.product_ids_in_order
        @data.customer_id = message.customer_id
        @data.order_id = message.order_id
      end
      
    end
  end
end

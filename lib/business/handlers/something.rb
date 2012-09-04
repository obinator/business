module Business
  module Handlers
    class Something
      include Workbench::Handler

      def handle_order_received(message)
        # @data.product_ids_in_order = message.product_ids_in_order
        # @data.customer_id = message.customer_id
        # @data.order_id = message.order_id
      end

      def handle_something(message)
      end
    end
  end
end

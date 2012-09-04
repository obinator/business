module Business
  module Messages
    class OrderReceived
      include Workbench::Message

      attr_accessor :customer_id
      attr_accessor :order_id
      attr_accessor :product_ids_in_order

      def description
        "Order #{order_id} received for customer #{customer_id} for products #{product_ids_in_order.to_sentence}"
      end
    end
  end
end

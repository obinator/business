module Business
  module Messages
    class CustomerBilled
      include Workbench::Message
      
      attr_accessor :customer_id
      attr_accessor :customer_billed
      attr_accessor :order_id

      def description
        "Customer #{customer_id} billed for order #{order_id}"
      end
    end
  end
end

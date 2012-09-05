module Business
  module Handlers
    class Sales
      include Workbench::Handler

      data Data::Sales
      started_by :order_received

      handle :order_received do |message|
        data.copy message do
          record :product_ids_in_order
          record :customer_id
          record :order_id
        end
        complete if ready?
      end
      
    end
  end
end

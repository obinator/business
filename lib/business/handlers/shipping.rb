module Business
  module Handlers
    class Shipping
      include Workbench::Handler

      data Data::Shipping
      started_by :order_accepted, :customer_billed

      handle :order_accepted do |message|
        data.copy message do
          record :product_ids_in_order
          record :customer_id
          record :order_id
        end
        complete if ready?
      end

      handle :customer_billed do |message|
        data.copy message do
          record :customer_billed
          record :customer_id
          record :order_id
        end
        complete if ready?
      end
    end
  end
end
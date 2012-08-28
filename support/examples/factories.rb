require 'factory_girl'

FactoryGirl.define do
  factory :order_accepted_message, class: Business::Messages::OrderAccepted do
    customer_id 111
    order_id 222
    product_ids_in_order [1, 2, 3]
  end

  factory :customer_billed_message, class: Business::Messages::CustomerBilled do
    customer_id 111
    order_id 222
  end
end

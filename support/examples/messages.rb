require_relative 'core_ext'

module Examples
  extend self
  
  def messages
    order_recieved = example :order_received_message
    order_accepted = example :order_accepted_message
    customer_billed = example :customer_billed_message

    [order_recieved, order_accepted, customer_billed]
  end
end

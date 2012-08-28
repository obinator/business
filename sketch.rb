#!/usr/bin/env ruby

require_relative 'init'
require_relative 'support/examples'

module Sketch
  include Business
  include Workbench
  extend self

  def dispatch_messages
    handler = Handlers::Shipping.new

    dispatcher = MessageDispatcher.new handler

    order_accepted, customer_billed = Examples.messages

    dispatcher.dispatch [order_accepted, customer_billed] do |receipt|
      puts receipt
    end
  end
end

Sketch::dispatch_messages

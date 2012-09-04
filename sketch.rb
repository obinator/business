#!/usr/bin/env ruby

require_relative 'init'
require_relative 'support/examples'

module Sketch
  include Business
  extend self

  def dispatch_messages
    handlers = [Handlers::Sales.new, Handlers::Shipping.new, Handlers::Something.new]

    dispatcher = Workbench::MessageDispatcher.new handlers

    dispatcher.dispatch Examples.messages do |receipt|
      puts receipt
    end
  end
end

Sketch::dispatch_messages

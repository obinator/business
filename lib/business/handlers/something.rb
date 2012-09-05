module Business
  module Handlers
    class Something
      include Workbench::Handler

      data Data::Something
      started_by :order_received, :something

      handle :order_received do |message|
        complete if ready?
      end

      handle :something do |message|
        complete if ready?
      end

    end
  end
end

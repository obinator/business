module Business
  module Messages
    class Something
      include Workbench::Message

      def receipt
        "Something Receipt"
      end
    end
  end
end      

module Business
  module Messages
    class Something
      include Workbench::Message

      def receipt
        "Something Happened"
      end
    end
  end
end      

module Business
  module Messages
    class Something
      include Workbench::Message

      def description
        "Something Happened"
      end
    end
  end
end      

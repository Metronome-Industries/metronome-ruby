# typed: strong

module Metronome
  module Models
    module Customers
      class AlertRetrieveResponse < Metronome::BaseModel
        Shape = T.type_alias { {data: Metronome::Models::Customers::CustomerAlert} }

        sig { returns(Metronome::Models::Customers::CustomerAlert) }
        attr_accessor :data

        sig { params(data: Metronome::Models::Customers::CustomerAlert).void }
        def initialize(data:); end

        sig { returns(Metronome::Models::Customers::AlertRetrieveResponse::Shape) }
        def to_h; end
      end
    end
  end
end

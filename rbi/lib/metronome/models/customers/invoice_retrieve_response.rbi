# typed: strong

module Metronome
  module Models
    module Customers
      class InvoiceRetrieveResponse < Metronome::BaseModel
        Shape = T.type_alias { {data: Metronome::Models::Customers::Invoice} }

        sig { returns(Metronome::Models::Customers::Invoice) }
        attr_accessor :data

        sig { params(data: Metronome::Models::Customers::Invoice).void }
        def initialize(data:); end

        sig { returns(Metronome::Models::Customers::InvoiceRetrieveResponse::Shape) }
        def to_h; end
      end
    end
  end
end

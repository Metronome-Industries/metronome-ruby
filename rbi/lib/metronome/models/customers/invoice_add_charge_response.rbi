# typed: strong

module Metronome
  module Models
    module Customers
      class InvoiceAddChargeResponse < Metronome::BaseModel
        Shape = T.type_alias { {} }

        sig { void }
        def initialize; end

        sig { returns(Metronome::Models::Customers::InvoiceAddChargeResponse::Shape) }
        def to_h; end
      end
    end
  end
end

# typed: strong

module Metronome
  module Models
    module Customers
      class InvoiceRetrieveResponse < Metronome::BaseModel
        sig { returns(Metronome::Models::Customers::Invoice) }
        def data
        end

        sig { params(_: Metronome::Models::Customers::Invoice).returns(Metronome::Models::Customers::Invoice) }
        def data=(_)
        end

        sig { params(data: Metronome::Models::Customers::Invoice).void }
        def initialize(data:)
        end

        sig { override.returns({data: Metronome::Models::Customers::Invoice}) }
        def to_hash
        end
      end
    end
  end
end

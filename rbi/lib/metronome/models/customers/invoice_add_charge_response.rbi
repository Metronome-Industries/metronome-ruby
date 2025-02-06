# typed: strong

module Metronome
  module Models
    module Customers
      class InvoiceAddChargeResponse < Metronome::BaseModel
        sig { void }
        def initialize; end

        sig { override.returns({}) }
        def to_hash; end
      end
    end
  end
end

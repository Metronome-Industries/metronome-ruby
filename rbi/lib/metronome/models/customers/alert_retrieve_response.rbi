# typed: strong

module Metronome
  module Models
    module Customers
      class AlertRetrieveResponse < Metronome::BaseModel
        sig { returns(Metronome::Models::Customers::CustomerAlert) }
        def data
        end

        sig do
          params(_: Metronome::Models::Customers::CustomerAlert).returns(Metronome::Models::Customers::CustomerAlert)
        end
        def data=(_)
        end

        sig { params(data: Metronome::Models::Customers::CustomerAlert).void }
        def initialize(data:)
        end

        sig { override.returns({data: Metronome::Models::Customers::CustomerAlert}) }
        def to_hash
        end
      end
    end
  end
end

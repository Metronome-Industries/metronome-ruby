# typed: strong

module Metronome
  module Models
    module Customers
      class InvoiceListBreakdownsResponse < Metronome::Models::Customers::Invoice
        sig { returns(Time) }
        def breakdown_end_timestamp
        end

        sig { params(_: Time).returns(Time) }
        def breakdown_end_timestamp=(_)
        end

        sig { returns(Time) }
        def breakdown_start_timestamp
        end

        sig { params(_: Time).returns(Time) }
        def breakdown_start_timestamp=(_)
        end

        sig { params(breakdown_end_timestamp: Time, breakdown_start_timestamp: Time).void }
        def initialize(breakdown_end_timestamp:, breakdown_start_timestamp:)
        end

        sig { override.returns({breakdown_end_timestamp: Time, breakdown_start_timestamp: Time}) }
        def to_hash
        end
      end
    end
  end
end

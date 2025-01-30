# typed: strong

module Metronome
  module Models
    module Customers
      class InvoiceListBreakdownsResponse < Metronome::Models::Customers::Invoice
        Shape = T.type_alias { {breakdown_end_timestamp: Time, breakdown_start_timestamp: Time} }

        sig { returns(Time) }
        attr_accessor :breakdown_end_timestamp

        sig { returns(Time) }
        attr_accessor :breakdown_start_timestamp

        sig { params(breakdown_end_timestamp: Time, breakdown_start_timestamp: Time).void }
        def initialize(breakdown_end_timestamp:, breakdown_start_timestamp:); end

        sig { returns(Metronome::Models::Customers::InvoiceListBreakdownsResponse::Shape) }
        def to_h; end
      end
    end
  end
end

# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Customers
        class InvoiceListBreakdownsResponse < MetronomeSDK::Models::V1::Customers::Invoice
          sig { returns(Time) }
          attr_accessor :breakdown_end_timestamp

          sig { returns(Time) }
          attr_accessor :breakdown_start_timestamp

          sig do
            params(breakdown_end_timestamp: Time, breakdown_start_timestamp: Time).returns(T.attached_class)
          end
          def self.new(breakdown_end_timestamp:, breakdown_start_timestamp:); end

          sig { override.returns({breakdown_end_timestamp: Time, breakdown_start_timestamp: Time}) }
          def to_hash; end
        end
      end
    end
  end
end

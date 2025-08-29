# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class PricingUnits
        # List all pricing units. All fiat currency types (for example, USD or GBP) will
        # be included, as well as any custom pricing units that were configured. Custom
        # pricing units can be used to charge for usage in a non-fiat pricing unit, for
        # example AI credits.
        #
        # Note: The USD (cents) pricing unit is 2714e483-4ff1-48e4-9e25-ac732e8f24f2.
        sig do
          params(
            limit: Integer,
            next_page: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPage[
              MetronomeSDK::Models::V1::PricingUnitListResponse
            ]
          )
        end
        def list(
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end

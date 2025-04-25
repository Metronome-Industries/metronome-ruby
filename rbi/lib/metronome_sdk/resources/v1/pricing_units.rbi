# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class PricingUnits
        # List all pricing units (known in the API by the legacy term "credit types").
        sig do
          params(
            limit: Integer,
            next_page: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
          )
            .returns(MetronomeSDK::Internal::CursorPage[MetronomeSDK::Models::V1::PricingUnitListResponse])
        end
        def list(
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end

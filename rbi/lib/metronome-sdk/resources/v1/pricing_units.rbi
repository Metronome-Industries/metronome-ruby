# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class PricingUnits
        sig do
          params(
            limit: Integer,
            next_page: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::CursorPage[MetronomeSDK::Models::V1::PricingUnitListResponse])
        end
        def list(limit: nil, next_page: nil, request_options: {})
        end

        sig { params(client: MetronomeSDK::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end

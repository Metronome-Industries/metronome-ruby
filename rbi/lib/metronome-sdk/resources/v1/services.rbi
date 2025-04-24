# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Services
        sig do
          params(request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])))
            .returns(MetronomeSDK::Models::V1::ServiceListResponse)
        end
        def list(request_options: {})
        end

        sig { params(client: MetronomeSDK::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end

# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Services
        # Fetches a list of services used by Metronome and the associated IP addresses. IP
        # addresses are not necessarily unique between services. In most cases, IP
        # addresses will appear in the list at least 30 days before they are used for the
        # first time.
        sig do
          params(
            request_options: T.nilable(
              T.any(
                MetronomeSDK::RequestOptions,
                MetronomeSDK::Internal::AnyHash
              )
            )
          )
            .returns(MetronomeSDK::Models::V1::ServiceListResponse)
        end
        def list(request_options: {}); end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end

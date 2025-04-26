# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Services
        # Fetches a list of services used by Metronome and the associated IP addresses. IP
        # addresses are not necessarily unique between services. In most cases, IP
        # addresses will appear in the list at least 30 days before they are used for the
        # first time.
        sig { params(request_options: MetronomeSDK::RequestOpts).returns(MetronomeSDK::Models::V1::ServiceListResponse) }
        def list(request_options: {}); end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end

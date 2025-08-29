# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Services
        # Gets Metronome's service registry with associated IP addresses for security
        # allowlisting and firewall configuration. Use this endpoint to maintain an
        # up-to-date list of IPs that your systems should trust for Metronome
        # communications. Returns service names and their current IP ranges, with new IPs
        # typically appearing 30+ days before first use to ensure smooth allowlist
        # updates.
        sig do
          params(request_options: MetronomeSDK::RequestOptions::OrHash).returns(
            MetronomeSDK::Models::V1::ServiceListResponse
          )
        end
        def list(request_options: {})
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end

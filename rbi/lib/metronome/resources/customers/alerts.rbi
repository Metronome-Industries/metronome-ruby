# typed: strong

module Metronome
  module Resources
    class Customers
      class Alerts
        sig do
          params(
            alert_id: String,
            customer_id: String,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::AlertRetrieveResponse)
        end
        def retrieve(alert_id:, customer_id:, request_options: {}); end

        sig do
          params(
            customer_id: String,
            next_page: String,
            alert_statuses: T::Array[Symbol],
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::AlertListResponse)
        end
        def list(customer_id:, next_page: nil, alert_statuses: nil, request_options: {}); end

        sig { params(alert_id: String, customer_id: String, request_options: Metronome::RequestOpts).void }
        def reset(alert_id:, customer_id:, request_options: {}); end

        sig { params(client: Metronome::Client).void }
        def initialize(client:); end
      end
    end
  end
end

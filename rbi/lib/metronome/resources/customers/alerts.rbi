# typed: strong

module Metronome
  module Resources
    class Customers
      class Alerts
        sig do
          params(
            params: T.any(Metronome::Models::Customers::AlertRetrieveParams, T::Hash[Symbol, T.anything]),
            alert_id: String,
            customer_id: String,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::AlertRetrieveResponse)
        end
        def retrieve(params, alert_id:, customer_id:, request_options: {}); end

        sig do
          params(
            params: T.any(Metronome::Models::Customers::AlertListParams, T::Hash[Symbol, T.anything]),
            customer_id: String,
            next_page: String,
            alert_statuses: T::Array[Symbol],
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Customers::AlertListResponse)
        end
        def list(params, customer_id:, next_page:, alert_statuses:, request_options: {}); end

        sig do
          params(
            params: T.any(Metronome::Models::Customers::AlertResetParams, T::Hash[Symbol, T.anything]),
            alert_id: String,
            customer_id: String,
            request_options: Metronome::RequestOpts
          ).returns(NilClass)
        end
        def reset(params, alert_id:, customer_id:, request_options: {}); end

        sig { params(client: Metronome::Client).void }
        def initialize(client:); end
      end
    end
  end
end

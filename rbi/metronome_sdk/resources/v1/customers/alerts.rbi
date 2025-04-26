# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Alerts
          # Get the customer alert status and alert information for the specified customer
          # and alert
          sig do
            params(alert_id: String, customer_id: String, request_options: MetronomeSDK::RequestOpts)
              .returns(MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse)
          end
          def retrieve(
            # The Metronome ID of the alert
            alert_id:,
            # The Metronome ID of the customer
            customer_id:,
            request_options: {}
          ); end
          # Fetch all customer alert statuses and alert information for a customer
          sig do
            params(
              customer_id: String,
              next_page: String,
              alert_statuses: T::Array[MetronomeSDK::Models::V1::Customers::AlertListParams::AlertStatus::OrSymbol],
              request_options: MetronomeSDK::RequestOpts
            )
              .returns(MetronomeSDK::Models::V1::Customers::AlertListResponse)
          end
          def list(
            # Body param: The Metronome ID of the customer
            customer_id:,
            # Query param: Cursor that indicates where the next page of results should start.
            next_page: nil,
            # Body param: Optionally filter by alert status. If absent, only enabled alerts
            # will be returned.
            alert_statuses: nil,
            request_options: {}
          ); end
          # Reset state for an alert by customer id and force re-evaluation
          sig do
            params(alert_id: String, customer_id: String, request_options: MetronomeSDK::RequestOpts).void
          end
          def reset(
            # The Metronome ID of the alert
            alert_id:,
            # The Metronome ID of the customer
            customer_id:,
            request_options: {}
          ); end
          # @api private
          sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
          def self.new(client:); end
        end
      end
    end
  end
end

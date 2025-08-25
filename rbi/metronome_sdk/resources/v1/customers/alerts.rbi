# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Alerts
          # Retrieve the real-time evaluation status for a specific alert-customer pair.
          # This endpoint provides instant visibility into whether a customer has triggered
          # an alert condition, enabling you to monitor account health and take proactive
          # action based on current alert states.
          #
          # Use this endpoint to:
          #
          # - Check if a specific customer is currently violating an alert threshold
          #   (in_alarm status)
          # - Verify alert configuration details and threshold values for a customer
          # - Integrate alert status checks into customer support tools or admin interfaces
          #
          # Key response fields: A CustomerAlert object containing:
          #
          # customer_status: The current evaluation state
          #
          # - ok - Customer is within acceptable thresholds
          # - in_alarm- Customer has breached the alert threshold
          # - evaluating - Alert has yet to be evaluated (typically due to a customer or
          #   alert having just been created)
          # - null - Alert has been archived
          # - triggered_by: Additional context about what caused the alert to trigger (when
          #   applicable)
          # - alert: Complete alert configuration including:
          #   - Alert ID, name, and type
          #   - Current threshold values and credit type information
          #   - Alert status (enabled, disabled, or archived)
          #   - Last update timestamp
          #   - Any applied filters (credit grant types, custom fields, group values)
          #
          # Usage guidelines:
          #
          # - Customer status: Returns the current evaluation state, not historical data.
          #   For alert history, use webhook notifications or event logs
          # - Archived alerts: Returns null for customer_status if the alert has been
          #   archived, but still includes the alert configuration details
          # - Integration patterns: This endpoint can be used to check a customer's alert
          #   status, but shouldn't be scraped. You should instead rely on the webhook
          #   notification to understand when customers are moved to IN_ALARM.
          # - Error handling: Returns 404 if either the customer or alert ID doesn't exist
          #   or isn't accessible to your organization
          sig do
            params(
              alert_id: String,
              customer_id: String,
              plans_or_contracts:
                MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts::OrSymbol,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse
            )
          end
          def retrieve(
            # The Metronome ID of the alert
            alert_id:,
            # The Metronome ID of the customer
            customer_id:,
            # When parallel alerts are enabled during migration, this flag denotes whether to
            # fetch alerts for plans or contracts.
            plans_or_contracts: nil,
            request_options: {}
          )
          end

          # Retrieve all alert configurations and their current statuses for a specific
          # customer in a single API call. This endpoint provides a comprehensive view of
          # all alerts monitoring a customer account.
          #
          # Use this endpoint to:
          #
          # - Display all active alerts for a customer in dashboards or admin panels
          # - Quickly identify which alerts a customer is currently triggering
          # - Audit alert coverage for specific accounts
          # - Filter alerts by status (enabled, disabled, or archived)
          #
          # Key response fields:
          #
          # - data: Array of CustomerAlert objects, each containing:
          #   - Current evaluation status (ok, in_alarm, evaluating, or null)
          #   - Complete alert configuration and threshold details
          #   - Alert metadata including type, name, and last update time
          # - next_page: Pagination cursor for retrieving additional results
          #
          # Usage guidelines:
          #
          # - Default behavior: Returns only enabled alerts unless alert_statuses filter is
          #   specified
          # - Pagination: Use the next_page cursor to retrieve all results for customers
          #   with many alerts
          sig do
            params(
              customer_id: String,
              next_page: String,
              alert_statuses:
                T::Array[
                  MetronomeSDK::V1::Customers::AlertListParams::AlertStatus::OrSymbol
                ],
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Internal::CursorPageWithoutLimit[
                MetronomeSDK::V1::Customers::CustomerAlert
              ]
            )
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
          )
          end

          # Force an immediate re-evaluation of a specific alert for a customer, clearing
          # any previous state and triggering a fresh assessment against current thresholds.
          # This endpoint ensures alert accuracy after configuration changes or data
          # corrections.
          #
          # Use this endpoint to:
          #
          # - Clear false positive alerts after fixing data issues
          # - Re-evaluate alerts after adjusting customer balances or credits
          # - Test alert behavior during development and debugging
          # - Resolve stuck alerts that may be in an incorrect state
          # - Trigger immediate evaluation after threshold modifications
          #
          # Key response fields:
          #
          # - 200 Success: Confirmation that the alert has been reset and re-evaluation
          #   initiated
          # - No response body is returned - the operation completes asynchronously
          #
          # Usage guidelines:
          #
          # - Immediate effect: Triggers re-evaluation instantly, which may result in new
          #   webhook notifications if thresholds are breached
          # - State clearing: Removes any cached evaluation state, ensuring a fresh
          #   assessment
          # - Use sparingly: Intended for exceptional cases, not routine operations
          # - Asynchronous processing: The reset completes immediately, but re-evaluation
          #   happens in the background
          sig do
            params(
              alert_id: String,
              customer_id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).void
          end
          def reset(
            # The Metronome ID of the alert
            alert_id:,
            # The Metronome ID of the customer
            customer_id:,
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
end

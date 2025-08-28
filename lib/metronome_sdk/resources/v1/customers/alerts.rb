# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Alerts
          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::AlertRetrieveParams} for more details.
          #
          # Retrieve the real-time evaluation status for a specific alert-customer pair.
          # This endpoint provides instant visibility into whether a customer has triggered
          # an alert condition, enabling you to monitor account health and take proactive
          # action based on current alert states.
          #
          # ### Use this endpoint to:
          #
          # - Check if a specific customer is currently violating an alert threshold
          #   (in_alarm status)
          # - Verify alert configuration details and threshold values for a customer
          # - Integrate alert status checks into customer support tools or admin interfaces
          #
          # ### Key response fields:
          #
          # A CustomerAlert object containing:
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
          # ### Usage guidelines:
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
          #
          # @overload retrieve(alert_id:, customer_id:, plans_or_contracts: nil, request_options: {})
          #
          # @param alert_id [String] The Metronome ID of the alert
          #
          # @param customer_id [String] The Metronome ID of the customer
          #
          # @param plans_or_contracts [Symbol, MetronomeSDK::Models::V1::Customers::AlertRetrieveParams::PlansOrContracts] When parallel alerts are enabled during migration, this flag denotes whether to
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse]
          #
          # @see MetronomeSDK::Models::V1::Customers::AlertRetrieveParams
          def retrieve(params)
            parsed, options = MetronomeSDK::V1::Customers::AlertRetrieveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/customer-alerts/get",
              body: parsed,
              model: MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Customers::AlertListParams} for more details.
          #
          # Retrieve all alert configurations and their current statuses for a specific
          # customer in a single API call. This endpoint provides a comprehensive view of
          # all alerts monitoring a customer account.
          #
          # ### Use this endpoint to:
          #
          # - Display all active alerts for a customer in dashboards or admin panels
          # - Quickly identify which alerts a customer is currently triggering
          # - Audit alert coverage for specific accounts
          # - Filter alerts by status (enabled, disabled, or archived)
          #
          # ### Key response fields:
          #
          # - data: Array of CustomerAlert objects, each containing:
          #   - Current evaluation status (ok, in_alarm, evaluating, or null)
          #   - Complete alert configuration and threshold details
          #   - Alert metadata including type, name, and last update time
          # - next_page: Pagination cursor for retrieving additional results
          #
          # ### Usage guidelines:
          #
          # - Default behavior: Returns only enabled alerts unless alert_statuses filter is
          #   specified
          # - Pagination: Use the next_page cursor to retrieve all results for customers
          #   with many alerts
          #
          # @overload list(customer_id:, next_page: nil, alert_statuses: nil, request_options: {})
          #
          # @param customer_id [String] Body param: The Metronome ID of the customer
          #
          # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
          #
          # @param alert_statuses [Array<Symbol, MetronomeSDK::Models::V1::Customers::AlertListParams::AlertStatus>] Body param: Optionally filter by alert status. If absent, only enabled alerts wi
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Internal::CursorPageWithoutLimit<MetronomeSDK::Models::V1::Customers::CustomerAlert>]
          #
          # @see MetronomeSDK::Models::V1::Customers::AlertListParams
          def list(params)
            parsed, options = MetronomeSDK::V1::Customers::AlertListParams.dump_request(params)
            query_params = [:next_page]
            @client.request(
              method: :post,
              path: "v1/customer-alerts/list",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              page: MetronomeSDK::Internal::CursorPageWithoutLimit,
              model: MetronomeSDK::V1::Customers::CustomerAlert,
              options: options
            )
          end

          # Force an immediate re-evaluation of a specific alert for a customer, clearing
          # any previous state and triggering a fresh assessment against current thresholds.
          # This endpoint ensures alert accuracy after configuration changes or data
          # corrections.
          #
          # ### Use this endpoint to:
          #
          # - Clear false positive alerts after fixing data issues
          # - Re-evaluate alerts after adjusting customer balances or credits
          # - Test alert behavior during development and debugging
          # - Resolve stuck alerts that may be in an incorrect state
          # - Trigger immediate evaluation after threshold modifications
          #
          # ### Key response fields:
          #
          # - 200 Success: Confirmation that the alert has been reset and re-evaluation
          #   initiated
          # - No response body is returned - the operation completes asynchronously
          #
          # ### Usage guidelines:
          #
          # - Immediate effect: Triggers re-evaluation instantly, which may result in new
          #   webhook notifications if thresholds are breached
          # - State clearing: Removes any cached evaluation state, ensuring a fresh
          #   assessment
          # - Use sparingly: Intended for exceptional cases, not routine operations
          # - Asynchronous processing: The reset completes immediately, but re-evaluation
          #   happens in the background
          #
          # @overload reset(alert_id:, customer_id:, request_options: {})
          #
          # @param alert_id [String] The Metronome ID of the alert
          #
          # @param customer_id [String] The Metronome ID of the customer
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see MetronomeSDK::Models::V1::Customers::AlertResetParams
          def reset(params)
            parsed, options = MetronomeSDK::V1::Customers::AlertResetParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/customer-alerts/reset",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [MetronomeSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end

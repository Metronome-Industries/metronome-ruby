# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Alerts
          # Retrieve the real-time evaluation status for a specific threshold
          # notification-customer pair. This endpoint provides instant visibility into
          # whether a customer has triggered a threshold notification condition, enabling
          # you to monitor account health and take proactive action based on current
          # threshold notification states.
          #
          # ### Use this endpoint to:
          #
          # - Check if a specific customer is currently violating an threshold notification
          #   (`in_alarm` status)
          # - Verify threshold notification configuration details and threshold values for a
          #   customer
          # - Monitor the evaluation state of newly created or recently modified threshold
          #   notification
          # - Build dashboards or automated workflows that respond to specific threshold
          #   notification conditions
          # - Validate threshold notification behavior before deploying to production
          #   customers
          # - Integrate threshold notification status checks into customer support tools or
          #   admin interfaces
          #
          # ### Key response fields:
          #
          # A CustomerAlert object containing:
          #
          # - `customer_status`: The current evaluation state
          #
          # - `ok` - Customer is within acceptable thresholds
          # - `in_alarm` - Customer has breached the threshold for the notification
          # - `evaluating` - Notification is currently being evaluated (typically during
          #   initial setup)
          # - `null` - Notification has been archived
          # - `triggered_by`: Additional context about what caused the notification to
          #   trigger (when applicable)
          # - alert: Complete threshold notification configuration including:
          #   - Notification ID, name, and type
          #   - Current threshold values and credit type information
          #   - Notification status (enabled, disabled, or archived)
          #   - Last update timestamp
          #   - Any applied filters (credit grant types, custom fields, group values)
          #
          # ### Usage guidelines:
          #
          # - Customer status: Returns the current evaluation state, not historical data.
          #   For threshold notification history, use webhook notifications or event logs
          # - Required parameters: Both customer_id and alert_id must be valid UUIDs that
          #   exist in your organization
          # - Archived notifications: Returns null for customer_status if the notification
          #   has been archived, but still includes the notification configuration details
          # - Performance considerations: This endpoint queries live evaluation state,
          #   making it ideal for real-time monitoring but not for bulk status checks
          # - Integration patterns: Best used for on-demand status checks in response to
          #   user actions or as part of targeted monitoring workflows
          # - Error handling: Returns 404 if either the customer or alert_id doesn't exist
          #   or isn't accessible to your organization
          sig do
            params(
              alert_id: String,
              customer_id: String,
              group_values:
                T::Array[
                  MetronomeSDK::V1::Customers::AlertRetrieveParams::GroupValue::OrHash
                ],
              plans_or_contracts:
                MetronomeSDK::V1::Customers::AlertRetrieveParams::PlansOrContracts::OrSymbol,
              seat_filter:
                MetronomeSDK::V1::Customers::AlertRetrieveParams::SeatFilter::OrHash,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Customers::AlertRetrieveResponse
            )
          end
          def retrieve(
            # The Metronome ID of the threshold notification
            alert_id:,
            # The Metronome ID of the customer
            customer_id:,
            # Only present for `spend_threshold_reached` notifications. Retrieve the
            # notification for a specific group key-value pair.
            group_values: nil,
            # When parallel threshold notifications are enabled during migration, this flag
            # denotes whether to fetch notifications for plans or contracts.
            plans_or_contracts: nil,
            # Only allowed for `low_remaining_seat_balance_reached` notifications. This
            # filters alerts by the seat group key-value pair.
            seat_filter: nil,
            request_options: {}
          )
          end

          # Retrieve all threshold notification configurations and their current statuses
          # for a specific customer in a single API call. This endpoint provides a
          # comprehensive view of all threshold notification monitoring a customer account.
          #
          # ### Use this endpoint to:
          #
          # - Display all active threshold notifications for a customer in dashboards or
          #   admin panels
          # - Quickly identify which threshold notifications a customer is currently
          #   triggering
          # - Audit threshold notification coverage for specific accounts
          # - Filter threshold notifications by status (enabled, disabled, or archived)
          #
          # ### Key response fields:
          #
          # - data: Array of CustomerAlert objects, each containing:
          #   - Current evaluation status (`ok`, `in_alarm`, `evaluating`, or `null`)
          #   - Complete threshold notification configuration and threshold details
          #   - Threshold notification metadata including type, name, and last update time
          # - next_page: Pagination cursor for retrieving additional results
          #
          # ### Usage guidelines:
          #
          # - Default behavior: Returns only enabled threshold notifications unless
          #   `alert_statuses` filter is specified
          # - Pagination: Use the `next_page` cursor to retrieve all results for customers
          #   with many notifications
          # - Performance: Efficiently retrieves multiple threshold notification statuses in
          #   a single request instead of making individual calls
          # - Filtering: Pass the `alert_statuses` array to include disabled or archived
          #   threshold notifications in results
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
            # Body param: Optionally filter by threshold notification status. If absent, only
            # enabled notifications will be returned.
            alert_statuses: nil,
            request_options: {}
          )
          end

          # Force an immediate re-evaluation of a specific threshold notification for a
          # customer, clearing any previous state and triggering a fresh assessment against
          # current thresholds. This endpoint ensures threshold notification accuracy after
          # configuration changes or data corrections.
          #
          # ### Use this endpoint to:
          #
          # - Clear false positive threshold notifications after fixing data issues
          # - Re-evaluate threshold notifications after adjusting customer balances or
          #   credits
          # - Test threshold notification behavior during development and debugging
          # - Resolve stuck threshold notification that may be in an incorrect state
          # - Trigger immediate evaluation after threshold modifications
          #
          # ### Key response fields:
          #
          # - 200 Success: Confirmation that the threshold notification has been reset and
          #   re-evaluation initiated
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
          sig do
            params(
              alert_id: String,
              customer_id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).void
          end
          def reset(
            # The Metronome ID of the threshold notification
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

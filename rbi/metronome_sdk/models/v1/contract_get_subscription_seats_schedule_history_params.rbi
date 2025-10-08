# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractGetSubscriptionSeatsScheduleHistoryParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::ContractGetSubscriptionSeatsScheduleHistoryParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :contract_id

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :subscription_id

        # Get the seats history segment for the covering date. Cannot be used with
        # `starting_at` or `ending_before`.
        sig { returns(T.nilable(Time)) }
        attr_accessor :covering_date

        # Cursor for pagination. Use the value from the `next_page` field of the previous
        # response to retrieve the next page of results.
        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        # Include seats history segments that are active at or before this timestamp. Use
        # with `starting_at` to get a specific time range. If not set, there's no upper
        # bound.
        sig { returns(T.nilable(Time)) }
        attr_accessor :ending_before

        # Maximum number of seat schedule entries to return. Defaults to 10. Required
        # range: 1 <= x <= 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit

        # Include seats history segments that are active at or after this timestamp. Use
        # with `ending_before` to get a specific time range. If not set, there's no lower
        # bound.
        sig { returns(T.nilable(Time)) }
        attr_accessor :starting_at

        sig do
          params(
            contract_id: String,
            customer_id: String,
            subscription_id: String,
            covering_date: T.nilable(Time),
            cursor: T.nilable(String),
            ending_before: T.nilable(Time),
            limit: T.nilable(Integer),
            starting_at: T.nilable(Time),
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          contract_id:,
          customer_id:,
          subscription_id:,
          # Get the seats history segment for the covering date. Cannot be used with
          # `starting_at` or `ending_before`.
          covering_date: nil,
          # Cursor for pagination. Use the value from the `next_page` field of the previous
          # response to retrieve the next page of results.
          cursor: nil,
          # Include seats history segments that are active at or before this timestamp. Use
          # with `starting_at` to get a specific time range. If not set, there's no upper
          # bound.
          ending_before: nil,
          # Maximum number of seat schedule entries to return. Defaults to 10. Required
          # range: 1 <= x <= 10.
          limit: nil,
          # Include seats history segments that are active at or after this timestamp. Use
          # with `ending_before` to get a specific time range. If not set, there's no lower
          # bound.
          starting_at: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              contract_id: String,
              customer_id: String,
              subscription_id: String,
              covering_date: T.nilable(Time),
              cursor: T.nilable(String),
              ending_before: T.nilable(Time),
              limit: T.nilable(Integer),
              starting_at: T.nilable(Time),
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

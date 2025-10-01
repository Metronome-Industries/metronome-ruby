# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractGetSubscriptionSeatsScheduleHistoryResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::ContractGetSubscriptionSeatsScheduleHistoryResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::V1::ContractGetSubscriptionSeatsScheduleHistoryResponse::Data
            ]
          )
        end
        attr_accessor :data

        # Cursor for the next page of results
        sig { returns(T.nilable(String)) }
        attr_accessor :next_page

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::Models::V1::ContractGetSubscriptionSeatsScheduleHistoryResponse::Data::OrHash
              ],
            next_page: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          data:,
          # Cursor for the next page of results
          next_page:
        )
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  MetronomeSDK::Models::V1::ContractGetSubscriptionSeatsScheduleHistoryResponse::Data
                ],
              next_page: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::ContractGetSubscriptionSeatsScheduleHistoryResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # Array of seat IDs that are assigned in this period
          sig { returns(T::Array[String]) }
          attr_accessor :assigned_seat_ids

          # The end time of this seat schedule period (null if ongoing)
          sig { returns(T.nilable(Time)) }
          attr_accessor :ending_before

          # The start time of this seat schedule period
          sig { returns(Time) }
          attr_accessor :starting_at

          # Total number of assigned and unassigned seats in this period
          sig { returns(Integer) }
          attr_accessor :total_quantity

          sig do
            params(
              assigned_seat_ids: T::Array[String],
              ending_before: T.nilable(Time),
              starting_at: Time,
              total_quantity: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of seat IDs that are assigned in this period
            assigned_seat_ids:,
            # The end time of this seat schedule period (null if ongoing)
            ending_before:,
            # The start time of this seat schedule period
            starting_at:,
            # Total number of assigned and unassigned seats in this period
            total_quantity:
          )
          end

          sig do
            override.returns(
              {
                assigned_seat_ids: T::Array[String],
                ending_before: T.nilable(Time),
                starting_at: Time,
                total_quantity: Integer
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end

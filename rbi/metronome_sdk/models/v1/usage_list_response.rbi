# typed: strong

module MetronomeSDK
  module Models
    module V1
      class UsageListResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::UsageListResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :billable_metric_id

        sig { returns(String) }
        attr_accessor :billable_metric_name

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(Time) }
        attr_accessor :end_timestamp

        sig { returns(Time) }
        attr_accessor :start_timestamp

        sig { returns(T.nilable(Float)) }
        attr_accessor :value

        # Values will be either a number or null. Null indicates that there were no
        # matches for the group_by value.
        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(Float)])) }
        attr_reader :groups

        sig { params(groups: T::Hash[Symbol, T.nilable(Float)]).void }
        attr_writer :groups

        sig do
          params(
            billable_metric_id: String,
            billable_metric_name: String,
            customer_id: String,
            end_timestamp: Time,
            start_timestamp: Time,
            value: T.nilable(Float),
            groups: T::Hash[Symbol, T.nilable(Float)]
          ).returns(T.attached_class)
        end
        def self.new(
          billable_metric_id:,
          billable_metric_name:,
          customer_id:,
          end_timestamp:,
          start_timestamp:,
          value:,
          # Values will be either a number or null. Null indicates that there were no
          # matches for the group_by value.
          groups: nil
        )
        end

        sig do
          override.returns(
            {
              billable_metric_id: String,
              billable_metric_name: String,
              customer_id: String,
              end_timestamp: Time,
              start_timestamp: Time,
              value: T.nilable(Float),
              groups: T::Hash[Symbol, T.nilable(Float)]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end

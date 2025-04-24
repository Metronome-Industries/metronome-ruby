# typed: strong

module MetronomeSDK
  module Models
    module V1
      class UsageListWithGroupsParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def billable_metric_id
        end

        sig { params(_: String).returns(String) }
        def billable_metric_id=(_)
        end

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(Symbol) }
        def window_size
        end

        sig { params(_: Symbol).returns(Symbol) }
        def window_size=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def limit
        end

        sig { params(_: Integer).returns(Integer) }
        def limit=(_)
        end

        sig { returns(T.nilable(String)) }
        def next_page
        end

        sig { params(_: String).returns(String) }
        def next_page=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def current_period
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def current_period=(_)
        end

        sig { returns(T.nilable(Time)) }
        def ending_before
        end

        sig { params(_: Time).returns(Time) }
        def ending_before=(_)
        end

        sig { returns(T.nilable(MetronomeSDK::Models::V1::UsageListWithGroupsParams::GroupBy)) }
        def group_by
        end

        sig do
          params(_: MetronomeSDK::Models::V1::UsageListWithGroupsParams::GroupBy)
            .returns(MetronomeSDK::Models::V1::UsageListWithGroupsParams::GroupBy)
        end
        def group_by=(_)
        end

        sig { returns(T.nilable(Time)) }
        def starting_on
        end

        sig { params(_: Time).returns(Time) }
        def starting_on=(_)
        end

        sig do
          params(
            billable_metric_id: String,
            customer_id: String,
            window_size: Symbol,
            limit: Integer,
            next_page: String,
            current_period: T::Boolean,
            ending_before: Time,
            group_by: MetronomeSDK::Models::V1::UsageListWithGroupsParams::GroupBy,
            starting_on: Time,
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(
          billable_metric_id:,
          customer_id:,
          window_size:,
          limit: nil,
          next_page: nil,
          current_period: nil,
          ending_before: nil,
          group_by: nil,
          starting_on: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                billable_metric_id: String,
                customer_id: String,
                window_size: Symbol,
                limit: Integer,
                next_page: String,
                current_period: T::Boolean,
                ending_before: Time,
                group_by: MetronomeSDK::Models::V1::UsageListWithGroupsParams::GroupBy,
                starting_on: Time,
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash
        end

        class WindowSize < MetronomeSDK::Enum
          abstract!

          HOUR = :HOUR
          DAY = :DAY
          NONE = :NONE

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class GroupBy < MetronomeSDK::BaseModel
          sig { returns(String) }
          def key
          end

          sig { params(_: String).returns(String) }
          def key=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def values=(_)
          end

          sig { params(key: String, values: T::Array[String]).void }
          def initialize(key:, values: nil)
          end

          sig { override.returns({key: String, values: T::Array[String]}) }
          def to_hash
          end
        end
      end
    end
  end
end

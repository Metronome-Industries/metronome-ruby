# typed: strong

module Metronome
  module Models
    class UsageListResponse < Metronome::BaseModel
      sig { returns(T::Array[Metronome::Models::UsageListResponse::Data]) }
      def data
      end

      sig do
        params(_: T::Array[Metronome::Models::UsageListResponse::Data])
          .returns(T::Array[Metronome::Models::UsageListResponse::Data])
      end
      def data=(_)
      end

      sig { returns(T.nilable(String)) }
      def next_page
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def next_page=(_)
      end

      sig { params(data: T::Array[Metronome::Models::UsageListResponse::Data], next_page: T.nilable(String)).void }
      def initialize(data:, next_page:)
      end

      sig do
        override
          .returns({data: T::Array[Metronome::Models::UsageListResponse::Data], next_page: T.nilable(String)})
      end
      def to_hash
      end

      class Data < Metronome::BaseModel
        sig { returns(String) }
        def billable_metric_id
        end

        sig { params(_: String).returns(String) }
        def billable_metric_id=(_)
        end

        sig { returns(String) }
        def billable_metric_name
        end

        sig { params(_: String).returns(String) }
        def billable_metric_name=(_)
        end

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(Time) }
        def end_timestamp
        end

        sig { params(_: Time).returns(Time) }
        def end_timestamp=(_)
        end

        sig { returns(Time) }
        def start_timestamp
        end

        sig { params(_: Time).returns(Time) }
        def start_timestamp=(_)
        end

        sig { returns(T.nilable(Float)) }
        def value
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def value=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(Float)])) }
        def groups
        end

        sig { params(_: T::Hash[Symbol, T.nilable(Float)]).returns(T::Hash[Symbol, T.nilable(Float)]) }
        def groups=(_)
        end

        sig do
          params(
            billable_metric_id: String,
            billable_metric_name: String,
            customer_id: String,
            end_timestamp: Time,
            start_timestamp: Time,
            value: T.nilable(Float),
            groups: T::Hash[Symbol, T.nilable(Float)]
          )
            .void
        end
        def initialize(
          billable_metric_id:,
          billable_metric_name:,
          customer_id:,
          end_timestamp:,
          start_timestamp:,
          value:,
          groups: nil
        )
        end

        sig do
          override
            .returns(
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

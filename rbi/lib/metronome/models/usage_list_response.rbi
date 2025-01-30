# typed: strong

module Metronome
  module Models
    class UsageListResponse < Metronome::BaseModel
      Shape = T.type_alias do
        {data: T::Array[Metronome::Models::UsageListResponse::Data], next_page: T.nilable(String)}
      end

      sig { returns(T::Array[Metronome::Models::UsageListResponse::Data]) }
      attr_accessor :data

      sig { returns(T.nilable(String)) }
      attr_accessor :next_page

      sig do
        params(data: T::Array[Metronome::Models::UsageListResponse::Data], next_page: T.nilable(String)).void
      end
      def initialize(data:, next_page:); end

      sig { returns(Metronome::Models::UsageListResponse::Shape) }
      def to_h; end

      class Data < Metronome::BaseModel
        Shape = T.type_alias do
          {
            billable_metric_id: String,
            billable_metric_name: String,
            customer_id: String,
            end_timestamp: Time,
            start_timestamp: Time,
            value: T.nilable(Float),
            groups: T.nilable(T::Hash[Symbol, T.nilable(Float)])
          }
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

        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(Float)])) }
        attr_reader :groups

        sig { params(groups: T.nilable(T::Hash[Symbol, T.nilable(Float)])).void }
        attr_writer :groups

        sig do
          params(
            billable_metric_id: String,
            billable_metric_name: String,
            customer_id: String,
            end_timestamp: Time,
            start_timestamp: Time,
            value: T.nilable(Float),
            groups: T.nilable(T::Hash[Symbol, T.nilable(Float)])
          ).void
        end
        def initialize(
          billable_metric_id:,
          billable_metric_name:,
          customer_id:,
          end_timestamp:,
          start_timestamp:,
          value:,
          groups: nil
        ); end

        sig { returns(Metronome::Models::UsageListResponse::Data::Shape) }
        def to_h; end
      end
    end
  end
end

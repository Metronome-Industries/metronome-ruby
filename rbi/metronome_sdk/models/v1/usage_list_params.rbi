# typed: strong

module MetronomeSDK
  module Models
    module V1
      class UsageListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        sig { returns(Time) }
        attr_accessor :ending_before

        sig { returns(Time) }
        attr_accessor :starting_on

        # A window_size of "day" or "hour" will return the usage for the specified period
        # segmented into daily or hourly aggregates. A window_size of "none" will return a
        # single usage aggregate for the entirety of the specified period.
        sig { returns(MetronomeSDK::Models::V1::UsageListParams::WindowSize::OrSymbol) }
        attr_accessor :window_size

        # Cursor that indicates where the next page of results should start.
        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        # A list of billable metrics to fetch usage for. If absent, all billable metrics
        # will be returned.
        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::UsageListParams::BillableMetric])) }
        attr_reader :billable_metrics

        sig do
          params(
            billable_metrics: T::Array[T.any(MetronomeSDK::Models::V1::UsageListParams::BillableMetric, MetronomeSDK::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :billable_metrics

        # A list of Metronome customer IDs to fetch usage for. If absent, usage for all
        # customers will be returned.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :customer_ids

        sig { params(customer_ids: T::Array[String]).void }
        attr_writer :customer_ids

        sig do
          params(
            ending_before: Time,
            starting_on: Time,
            window_size: MetronomeSDK::Models::V1::UsageListParams::WindowSize::OrSymbol,
            next_page: String,
            billable_metrics: T::Array[T.any(MetronomeSDK::Models::V1::UsageListParams::BillableMetric, MetronomeSDK::Internal::AnyHash)],
            customer_ids: T::Array[String],
            request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          ending_before:,
          starting_on:,
          # A window_size of "day" or "hour" will return the usage for the specified period
          # segmented into daily or hourly aggregates. A window_size of "none" will return a
          # single usage aggregate for the entirety of the specified period.
          window_size:,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          # A list of billable metrics to fetch usage for. If absent, all billable metrics
          # will be returned.
          billable_metrics: nil,
          # A list of Metronome customer IDs to fetch usage for. If absent, usage for all
          # customers will be returned.
          customer_ids: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                ending_before: Time,
                starting_on: Time,
                window_size: MetronomeSDK::Models::V1::UsageListParams::WindowSize::OrSymbol,
                next_page: String,
                billable_metrics: T::Array[MetronomeSDK::Models::V1::UsageListParams::BillableMetric],
                customer_ids: T::Array[String],
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash; end

        # A window_size of "day" or "hour" will return the usage for the specified period
        # segmented into daily or hourly aggregates. A window_size of "none" will return a
        # single usage aggregate for the entirety of the specified period.
        module WindowSize
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::UsageListParams::WindowSize) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HOUR = T.let(:HOUR, MetronomeSDK::Models::V1::UsageListParams::WindowSize::TaggedSymbol)
          DAY = T.let(:DAY, MetronomeSDK::Models::V1::UsageListParams::WindowSize::TaggedSymbol)
          NONE = T.let(:NONE, MetronomeSDK::Models::V1::UsageListParams::WindowSize::TaggedSymbol)

          sig { override.returns(T::Array[MetronomeSDK::Models::V1::UsageListParams::WindowSize::TaggedSymbol]) }
          def self.values; end
        end

        class BillableMetric < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(MetronomeSDK::Models::V1::UsageListParams::BillableMetric::GroupBy)) }
          attr_reader :group_by

          sig do
            params(
              group_by: T.any(MetronomeSDK::Models::V1::UsageListParams::BillableMetric::GroupBy, MetronomeSDK::Internal::AnyHash)
            )
              .void
          end
          attr_writer :group_by

          sig do
            params(
              id: String,
              group_by: T.any(MetronomeSDK::Models::V1::UsageListParams::BillableMetric::GroupBy, MetronomeSDK::Internal::AnyHash)
            )
              .returns(T.attached_class)
          end
          def self.new(id:, group_by: nil); end

          sig do
            override
              .returns({id: String, group_by: MetronomeSDK::Models::V1::UsageListParams::BillableMetric::GroupBy})
          end
          def to_hash; end

          class GroupBy < MetronomeSDK::Internal::Type::BaseModel
            # The name of the group_by key to use
            sig { returns(String) }
            attr_accessor :key

            # Values of the group_by key to return in the query. If this field is omitted, all
            # available values will be returned, up to a maximum of 200.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :values

            sig { params(values: T::Array[String]).void }
            attr_writer :values

            sig { params(key: String, values: T::Array[String]).returns(T.attached_class) }
            def self.new(
              # The name of the group_by key to use
              key:,
              # Values of the group_by key to return in the query. If this field is omitted, all
              # available values will be returned, up to a maximum of 200.
              values: nil
            ); end
            sig { override.returns({key: String, values: T::Array[String]}) }
            def to_hash; end
          end
        end
      end
    end
  end
end

# typed: strong

module MetronomeSDK
  module Models
    module V1
      class UsageListWithGroupsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :billable_metric_id

        sig { returns(String) }
        attr_accessor :customer_id

        # A window_size of "day" or "hour" will return the usage for the specified period
        # segmented into daily or hourly aggregates. A window_size of "none" will return a
        # single usage aggregate for the entirety of the specified period.
        sig do
          returns(
            MetronomeSDK::V1::UsageListWithGroupsParams::WindowSize::OrSymbol
          )
        end
        attr_accessor :window_size

        # Max number of results that should be returned
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Cursor that indicates where the next page of results should start.
        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        # If true, will return the usage for the current billing period. Will return an
        # error if the customer is currently uncontracted or starting_on and ending_before
        # are specified when this is true.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :current_period

        sig { params(current_period: T::Boolean).void }
        attr_writer :current_period

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig do
          returns(
            T.nilable(MetronomeSDK::V1::UsageListWithGroupsParams::GroupBy)
          )
        end
        attr_reader :group_by

        sig do
          params(
            group_by:
              MetronomeSDK::V1::UsageListWithGroupsParams::GroupBy::OrHash
          ).void
        end
        attr_writer :group_by

        sig { returns(T.nilable(Time)) }
        attr_reader :starting_on

        sig { params(starting_on: Time).void }
        attr_writer :starting_on

        sig do
          params(
            billable_metric_id: String,
            customer_id: String,
            window_size:
              MetronomeSDK::V1::UsageListWithGroupsParams::WindowSize::OrSymbol,
            limit: Integer,
            next_page: String,
            current_period: T::Boolean,
            ending_before: Time,
            group_by:
              MetronomeSDK::V1::UsageListWithGroupsParams::GroupBy::OrHash,
            starting_on: Time,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          billable_metric_id:,
          customer_id:,
          # A window_size of "day" or "hour" will return the usage for the specified period
          # segmented into daily or hourly aggregates. A window_size of "none" will return a
          # single usage aggregate for the entirety of the specified period.
          window_size:,
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          # If true, will return the usage for the current billing period. Will return an
          # error if the customer is currently uncontracted or starting_on and ending_before
          # are specified when this is true.
          current_period: nil,
          ending_before: nil,
          group_by: nil,
          starting_on: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              billable_metric_id: String,
              customer_id: String,
              window_size:
                MetronomeSDK::V1::UsageListWithGroupsParams::WindowSize::OrSymbol,
              limit: Integer,
              next_page: String,
              current_period: T::Boolean,
              ending_before: Time,
              group_by: MetronomeSDK::V1::UsageListWithGroupsParams::GroupBy,
              starting_on: Time,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # A window_size of "day" or "hour" will return the usage for the specified period
        # segmented into daily or hourly aggregates. A window_size of "none" will return a
        # single usage aggregate for the entirety of the specified period.
        module WindowSize
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                MetronomeSDK::V1::UsageListWithGroupsParams::WindowSize
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HOUR =
            T.let(
              :HOUR,
              MetronomeSDK::V1::UsageListWithGroupsParams::WindowSize::TaggedSymbol
            )
          DAY =
            T.let(
              :DAY,
              MetronomeSDK::V1::UsageListWithGroupsParams::WindowSize::TaggedSymbol
            )
          NONE =
            T.let(
              :NONE,
              MetronomeSDK::V1::UsageListWithGroupsParams::WindowSize::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::UsageListWithGroupsParams::WindowSize::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class GroupBy < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          # The name of the group_by key to use
          sig { returns(String) }
          attr_accessor :key

          # Values of the group_by key to return in the query. Omit this if you'd like all
          # values for the key returned.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :values

          sig { params(values: T::Array[String]).void }
          attr_writer :values

          sig do
            params(key: String, values: T::Array[String]).returns(
              T.attached_class
            )
          end
          def self.new(
            # The name of the group_by key to use
            key:,
            # Values of the group_by key to return in the query. Omit this if you'd like all
            # values for the key returned.
            values: nil
          )
          end

          sig { override.returns({ key: String, values: T::Array[String] }) }
          def to_hash
          end
        end
      end
    end
  end
end

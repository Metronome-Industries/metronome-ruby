# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerListBillableMetricsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::CustomerListBillableMetricsParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        # If true, the list of returned metrics will include archived metrics
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_archived

        sig { params(include_archived: T::Boolean).void }
        attr_writer :include_archived

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

        # If true, the list of metrics will be filtered to just ones that are on the
        # customer's current plan
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :on_current_plan

        sig { params(on_current_plan: T::Boolean).void }
        attr_writer :on_current_plan

        sig do
          params(
            customer_id: String,
            include_archived: T::Boolean,
            limit: Integer,
            next_page: String,
            on_current_plan: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          # If true, the list of returned metrics will include archived metrics
          include_archived: nil,
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          # If true, the list of metrics will be filtered to just ones that are on the
          # customer's current plan
          on_current_plan: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              include_archived: T::Boolean,
              limit: Integer,
              next_page: String,
              on_current_plan: T::Boolean,
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

# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Credits
          sig do
            params(
              access_schedule: MetronomeSDK::Models::V1::Customers::CreditCreateParams::AccessSchedule,
              customer_id: String,
              priority: Float,
              product_id: String,
              applicable_contract_ids: T::Array[String],
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              name: String,
              netsuite_sales_order_id: String,
              rate_type: Symbol,
              salesforce_opportunity_id: String,
              uniqueness_key: String,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::Models::V1::Customers::CreditCreateResponse)
          end
          def create(
            access_schedule:,
            customer_id:,
            priority:,
            product_id:,
            applicable_contract_ids: nil,
            applicable_product_ids: nil,
            applicable_product_tags: nil,
            custom_fields: nil,
            description: nil,
            name: nil,
            netsuite_sales_order_id: nil,
            rate_type: nil,
            salesforce_opportunity_id: nil,
            uniqueness_key: nil,
            request_options: {}
          )
          end

          sig do
            params(
              customer_id: String,
              covering_date: Time,
              credit_id: String,
              effective_before: Time,
              include_archived: T::Boolean,
              include_balance: T::Boolean,
              include_contract_credits: T::Boolean,
              include_ledgers: T::Boolean,
              next_page: String,
              starting_at: Time,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::Models::V1::Customers::CreditListResponse)
          end
          def list(
            customer_id:,
            covering_date: nil,
            credit_id: nil,
            effective_before: nil,
            include_archived: nil,
            include_balance: nil,
            include_contract_credits: nil,
            include_ledgers: nil,
            next_page: nil,
            starting_at: nil,
            request_options: {}
          )
          end

          sig do
            params(
              access_ending_before: Time,
              credit_id: String,
              customer_id: String,
              request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateResponse)
          end
          def update_end_date(access_ending_before:, credit_id:, customer_id:, request_options: {})
          end

          sig { params(client: MetronomeSDK::Client).void }
          def initialize(client:)
          end
        end
      end
    end
  end
end

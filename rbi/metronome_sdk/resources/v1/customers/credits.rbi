# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Credits
          # Create a new credit at the customer level.
          sig do
            params(
              access_schedule:
                MetronomeSDK::V1::Customers::CreditCreateParams::AccessSchedule::OrHash,
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
              rate_type:
                MetronomeSDK::V1::Customers::CreditCreateParams::RateType::OrSymbol,
              salesforce_opportunity_id: String,
              specifiers:
                T::Array[
                  MetronomeSDK::V1::Customers::CreditCreateParams::Specifier::OrHash
                ],
              uniqueness_key: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(MetronomeSDK::Models::V1::Customers::CreditCreateResponse)
          end
          def create(
            # Schedule for distributing the credit to the customer.
            access_schedule:,
            customer_id:,
            # If multiple credits or commits are applicable, the one with the lower priority
            # will apply first.
            priority:,
            product_id:,
            # Which contract the credit applies to. If not provided, the credit applies to all
            # contracts.
            applicable_contract_ids: nil,
            # Which products the credit applies to. If both applicable_product_ids and
            # applicable_product_tags are not provided, the credit applies to all products.
            applicable_product_ids: nil,
            # Which tags the credit applies to. If both applicable_product_ids and
            # applicable_product_tags are not provided, the credit applies to all products.
            applicable_product_tags: nil,
            custom_fields: nil,
            # Used only in UI/API. It is not exposed to end customers.
            description: nil,
            # displayed on invoices
            name: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_sales_order_id: nil,
            rate_type: nil,
            # This field's availability is dependent on your client's configuration.
            salesforce_opportunity_id: nil,
            # List of filters that determine what kind of customer usage draws down a commit
            # or credit. A customer's usage needs to meet the condition of at least one of the
            # specifiers to contribute to a commit's or credit's drawdown. This field cannot
            # be used together with `applicable_product_ids` or `applicable_product_tags`.
            specifiers: nil,
            # Prevents the creation of duplicates. If a request to create a commit or credit
            # is made with a uniqueness key that was previously used to create a commit or
            # credit, a new record will not be created and the request will fail with a 409
            # error.
            uniqueness_key: nil,
            request_options: {}
          )
          end

          # List credits.
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
              limit: Integer,
              next_page: String,
              starting_at: Time,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(MetronomeSDK::Models::V1::Customers::CreditListResponse)
          end
          def list(
            customer_id:,
            # Return only credits that have access schedules that "cover" the provided date
            covering_date: nil,
            credit_id: nil,
            # Include only credits that have any access before the provided date (exclusive)
            effective_before: nil,
            # Include archived credits and credits from archived contracts.
            include_archived: nil,
            # Include the balance in the response. Setting this flag may cause the query to be
            # slower.
            include_balance: nil,
            # Include credits on the contract level.
            include_contract_credits: nil,
            # Include credit ledgers in the response. Setting this flag may cause the query to
            # be slower.
            include_ledgers: nil,
            # The maximum number of commits to return. Defaults to 25.
            limit: nil,
            # The next page token from a previous response.
            next_page: nil,
            # Include only credits that have any access on or after the provided date
            starting_at: nil,
            request_options: {}
          )
          end

          # Pull forward the end date of a credit. Use the "edit a credit" endpoint to
          # extend the end date of a credit, or to make other edits to the credit.
          sig do
            params(
              access_ending_before: Time,
              credit_id: String,
              customer_id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateResponse
            )
          end
          def update_end_date(
            # RFC 3339 timestamp indicating when access to the credit will end and it will no
            # longer be possible to draw it down (exclusive).
            access_ending_before:,
            # ID of the commit to update
            credit_id:,
            # ID of the customer whose credit is to be updated
            customer_id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end

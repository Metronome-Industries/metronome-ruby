# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Customers
        class Commits
          # Create a new commit at the customer level.
          sig do
            params(
              access_schedule: T.any(
                MetronomeSDK::Models::V1::Customers::CommitCreateParams::AccessSchedule,
                MetronomeSDK::Internal::AnyHash
              ),
              customer_id: String,
              priority: Float,
              product_id: String,
              type: MetronomeSDK::Models::V1::Customers::CommitCreateParams::Type::OrSymbol,
              applicable_contract_ids: T::Array[String],
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              invoice_contract_id: String,
              invoice_schedule: T.any(
                MetronomeSDK::Models::V1::Customers::CommitCreateParams::InvoiceSchedule,
                MetronomeSDK::Internal::AnyHash
              ),
              name: String,
              netsuite_sales_order_id: String,
              rate_type: MetronomeSDK::Models::V1::Customers::CommitCreateParams::RateType::OrSymbol,
              salesforce_opportunity_id: String,
              uniqueness_key: String,
              request_options: MetronomeSDK::RequestOpts
            )
              .returns(MetronomeSDK::Models::V1::Customers::CommitCreateResponse)
          end
          def create(
            # Schedule for distributing the commit to the customer. For "POSTPAID" commits
            # only one schedule item is allowed and amount must match invoice_schedule total.
            access_schedule:,
            customer_id:,
            # If multiple credits or commits are applicable, the one with the lower priority
            # will apply first.
            priority:,
            # ID of the fixed product associated with the commit. This is required because
            # products are used to invoice the commit amount.
            product_id:,
            type:,
            # Which contract the commit applies to. If not provided, the commit applies to all
            # contracts.
            applicable_contract_ids: nil,
            # Which products the commit applies to. If both applicable_product_ids and
            # applicable_product_tags are not provided, the commit applies to all products.
            applicable_product_ids: nil,
            # Which tags the commit applies to. If both applicable_product_ids and
            # applicable_product_tags are not provided, the commit applies to all products.
            applicable_product_tags: nil,
            custom_fields: nil,
            # Used only in UI/API. It is not exposed to end customers.
            description: nil,
            # The contract that this commit will be billed on. This is required for "POSTPAID"
            # commits and for "PREPAID" commits unless there is no invoice schedule above
            # (i.e., the commit is 'free').
            invoice_contract_id: nil,
            # Required for "POSTPAID" commits: the true up invoice will be generated at this
            # time and only one schedule item is allowed; the total must match
            # accesss_schedule amount. Optional for "PREPAID" commits: if not provided, this
            # will be a "complimentary" commit with no invoice.
            invoice_schedule: nil,
            # displayed on invoices
            name: nil,
            # This field's availability is dependent on your client's configuration.
            netsuite_sales_order_id: nil,
            rate_type: nil,
            # This field's availability is dependent on your client's configuration.
            salesforce_opportunity_id: nil,
            # Prevents the creation of duplicates. If a request to create a commit or credit
            # is made with a uniqueness key that was previously used to create a commit or
            # credit, a new record will not be created and the request will fail with a 409
            # error.
            uniqueness_key: nil,
            request_options: {}
          ); end
          # List commits.
          sig do
            params(
              customer_id: String,
              commit_id: String,
              covering_date: Time,
              effective_before: Time,
              include_archived: T::Boolean,
              include_balance: T::Boolean,
              include_contract_commits: T::Boolean,
              include_ledgers: T::Boolean,
              next_page: String,
              starting_at: Time,
              request_options: MetronomeSDK::RequestOpts
            )
              .returns(MetronomeSDK::Models::V1::Customers::CommitListResponse)
          end
          def list(
            customer_id:,
            commit_id: nil,
            # Include only commits that have access schedules that "cover" the provided date
            covering_date: nil,
            # Include only commits that have any access before the provided date (exclusive)
            effective_before: nil,
            # Include archived commits and commits from archived contracts.
            include_archived: nil,
            # Include the balance in the response. Setting this flag may cause the query to be
            # slower.
            include_balance: nil,
            # Include commits on the contract level.
            include_contract_commits: nil,
            # Include commit ledgers in the response. Setting this flag may cause the query to
            # be slower.
            include_ledgers: nil,
            # The next page token from a previous response.
            next_page: nil,
            # Include only commits that have any access on or after the provided date
            starting_at: nil,
            request_options: {}
          ); end
          # Pull forward the end date of a prepaid commit. Use the "edit a commit" endpoint
          # to extend the end date of a prepaid commit, or to make other edits to the
          # commit.
          sig do
            params(
              commit_id: String,
              customer_id: String,
              access_ending_before: Time,
              invoices_ending_before: Time,
              request_options: MetronomeSDK::RequestOpts
            )
              .returns(MetronomeSDK::Models::V1::Customers::CommitUpdateEndDateResponse)
          end
          def update_end_date(
            # ID of the commit to update. Only supports "PREPAID" commits.
            commit_id:,
            # ID of the customer whose commit is to be updated
            customer_id:,
            # RFC 3339 timestamp indicating when access to the commit will end and it will no
            # longer be possible to draw it down (exclusive). If not provided, the access will
            # not be updated.
            access_ending_before: nil,
            # RFC 3339 timestamp indicating when the commit will stop being invoiced
            # (exclusive). If not provided, the invoice schedule will not be updated.
            invoices_ending_before: nil,
            request_options: {}
          ); end
          # @api private
          sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
          def self.new(client:); end
        end
      end
    end
  end
end

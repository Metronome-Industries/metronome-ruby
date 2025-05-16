# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#list
      class ContractListResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<MetronomeSDK::Models::V1::ContractListResponse::Data>]

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute amendments
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment>]
          required :amendments,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment] }

          # @!attribute current
          #
          #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current]
          required :current, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current }

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute initial
          #
          #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial]
          required :initial, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial }

          # @!attribute archived_at
          #   RFC 3339 timestamp indicating when the contract was archived. If not returned,
          #   the contract is not archived.
          #
          #   @return [Time, nil]
          optional :archived_at, Time

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute customer_billing_provider_configuration
          #   The billing provider configuration associated with a contract.
          #
          #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration, nil]
          optional :customer_billing_provider_configuration,
                   -> { MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration }

          # @!attribute prepaid_balance_threshold_configuration
          #
          #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration, nil]
          optional :prepaid_balance_threshold_configuration,
                   -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration }

          # @!attribute scheduled_charges_on_usage_invoices
          #   Determines which scheduled and commit charges to consolidate onto the Contract's
          #   usage invoice. The charge's `timestamp` must match the usage invoice's
          #   `ending_before` date for consolidation to occur. This field cannot be modified
          #   after a Contract has been created. If this field is omitted, charges will appear
          #   on a separate invoice from usage charges.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices, nil]
          optional :scheduled_charges_on_usage_invoices,
                   enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices }

          # @!attribute spend_threshold_configuration
          #
          #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration, nil]
          optional :spend_threshold_configuration,
                   -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration }

          # @!attribute uniqueness_key
          #   Prevents the creation of duplicates. If a request to create a record is made
          #   with a previously used uniqueness key, a new record will not be created and the
          #   request will fail with a 409 error.
          #
          #   @return [String, nil]
          optional :uniqueness_key, String

          # @!method initialize(id:, amendments:, current:, customer_id:, initial:, archived_at: nil, custom_fields: nil, customer_billing_provider_configuration: nil, prepaid_balance_threshold_configuration: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, uniqueness_key: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::ContractListResponse::Data} for more details.
          #
          #   @param id [String]
          #
          #   @param amendments [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment>]
          #
          #   @param current [MetronomeSDK::Models::V1::ContractListResponse::Data::Current]
          #
          #   @param customer_id [String]
          #
          #   @param initial [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial]
          #
          #   @param archived_at [Time] RFC 3339 timestamp indicating when the contract was archived. If not returned, t
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param customer_billing_provider_configuration [MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration] The billing provider configuration associated with a contract.
          #
          #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration]
          #
          #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
          #
          #   @param spend_threshold_configuration [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration]
          #
          #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit

          class Amendment < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute commits
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit>]
            required :commits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit] }

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute created_by
            #
            #   @return [String]
            required :created_by, String

            # @!attribute overrides
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override>]
            required :overrides,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override] }

            # @!attribute scheduled_charges
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge>]
            required :scheduled_charges,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge] }

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute credits
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit>, nil]
            optional :credits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit] }

            # @!attribute discounts
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount>, nil]
            optional :discounts,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount] }

            # @!attribute netsuite_sales_order_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!attribute professional_services
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ProfessionalService>, nil]
            optional :professional_services,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ProfessionalService] }

            # @!attribute reseller_royalties
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty>, nil]
            optional :reseller_royalties,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty] }

            # @!attribute salesforce_opportunity_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :salesforce_opportunity_id, String

            # @!method initialize(id:, commits:, created_at:, created_by:, overrides:, scheduled_charges:, starting_at:, credits: nil, discounts: nil, netsuite_sales_order_id: nil, professional_services: nil, reseller_royalties: nil, salesforce_opportunity_id: nil)
            #   @param id [String]
            #
            #   @param commits [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit>]
            #
            #   @param created_at [Time]
            #
            #   @param created_by [String]
            #
            #   @param overrides [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override>]
            #
            #   @param scheduled_charges [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge>]
            #
            #   @param starting_at [Time]
            #
            #   @param credits [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit>]
            #
            #   @param discounts [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount>] This field's availability is dependent on your client's configuration.
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param professional_services [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ProfessionalService>] This field's availability is dependent on your client's configuration.
            #
            #   @param reseller_royalties [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty>] This field's availability is dependent on your client's configuration.
            #
            #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.

            class Commit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Product]
              required :product, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Product }

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Type]
              required :type, enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Type }

              # @!attribute access_schedule
              #   The schedule that the customer will gain access to the credits purposed with
              #   this commit.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::AccessSchedule, nil]
              optional :access_schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::AccessSchedule }

              # @!attribute amount
              #   (DEPRECATED) Use access_schedule + invoice_schedule instead.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!attribute applicable_contract_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute archived_at
              #   RFC 3339 timestamp indicating when the commit was archived. If not provided, the
              #   commit is not archived.
              #
              #   @return [Time, nil]
              optional :archived_at, Time

              # @!attribute balance
              #   The current balance of the credit or commit. This balance reflects the amount of
              #   credit or commit that the customer has access to use at this moment - thus,
              #   expired and upcoming credit or commit segments contribute 0 to the balance. The
              #   balance will match the sum of all ledger entries with the exception of the case
              #   where the sum of negative manual ledger entries exceeds the positive amount
              #   remaining on the credit or commit - in that case, the balance will be 0. All
              #   manual ledger entries associated with active credit or commit segments are
              #   included in the balance, including future-dated manual ledger entries.
              #
              #   @return [Float, nil]
              optional :balance, Float

              # @!attribute contract
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Contract, nil]
              optional :contract,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Contract }

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute invoice_contract
              #   The contract that this commit will be billed on.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::InvoiceContract, nil]
              optional :invoice_contract,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::InvoiceContract }

              # @!attribute invoice_schedule
              #   The schedule that the customer will be invoiced for this commit.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::InvoiceSchedule, nil]
              optional :invoice_schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::InvoiceSchedule }

              # @!attribute ledger
              #   A list of ordered events that impact the balance of a commit. For example, an
              #   invoice deduction or a rollover.
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember5, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember6, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember7, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember8, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember9, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember10, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember11, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember12>, nil]
              optional :ledger,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger] }

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!attribute priority
              #   If multiple credits or commits are applicable, the one with the lower priority
              #   will apply first.
              #
              #   @return [Float, nil]
              optional :priority, Float

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::RateType }

              # @!attribute rolled_over_from
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::RolledOverFrom, nil]
              optional :rolled_over_from,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::RolledOverFrom }

              # @!attribute rollover_fraction
              #
              #   @return [Float, nil]
              optional :rollover_fraction, Float

              # @!attribute salesforce_opportunity_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :salesforce_opportunity_id, String

              # @!attribute uniqueness_key
              #   Prevents the creation of duplicates. If a request to create a commit or credit
              #   is made with a uniqueness key that was previously used to create a commit or
              #   credit, a new record will not be created and the request will fail with a 409
              #   error.
              #
              #   @return [String, nil]
              optional :uniqueness_key, String

              # @!method initialize(id:, product:, type:, access_schedule: nil, amount: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, archived_at: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, invoice_contract: nil, invoice_schedule: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, rolled_over_from: nil, rollover_fraction: nil, salesforce_opportunity_id: nil, uniqueness_key: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit} for
              #   more details.
              #
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Product]
              #
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Type]
              #
              #   @param access_schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::AccessSchedule] The schedule that the customer will gain access to the credits purposed with thi
              #
              #   @param amount [Float] (DEPRECATED) Use access_schedule + invoice_schedule instead.
              #
              #   @param applicable_contract_ids [Array<String>]
              #
              #   @param applicable_product_ids [Array<String>]
              #
              #   @param applicable_product_tags [Array<String>]
              #
              #   @param archived_at [Time] RFC 3339 timestamp indicating when the commit was archived. If not provided, the
              #
              #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
              #
              #   @param contract [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Contract]
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param description [String]
              #
              #   @param invoice_contract [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::InvoiceContract] The contract that this commit will be billed on.
              #
              #   @param invoice_schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::InvoiceSchedule] The schedule that the customer will be invoiced for this commit.
              #
              #   @param ledger [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember5, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember6, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember7, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember8, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember9, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember10, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember11, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember12>] A list of ordered events that impact the balance of a commit. For example, an in
              #
              #   @param name [String]
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::RateType]
              #
              #   @param rolled_over_from [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::RolledOverFrom]
              #
              #   @param rollover_fraction [Float]
              #
              #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID = :PREPAID
                POSTPAID = :POSTPAID

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit#access_schedule
              class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::AccessSchedule::ScheduleItem>]
                required :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::AccessSchedule::ScheduleItem] }

                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::AccessSchedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::AccessSchedule::CreditType }

                # @!method initialize(schedule_items:, credit_type: nil)
                #   The schedule that the customer will gain access to the credits purposed with
                #   this commit.
                #
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::AccessSchedule::ScheduleItem>]
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::AccessSchedule::CreditType]

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute ending_before
                  #
                  #   @return [Time]
                  required :ending_before, Time

                  # @!attribute starting_at
                  #
                  #   @return [Time]
                  required :starting_at, Time

                  # @!method initialize(id:, amount:, ending_before:, starting_at:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param ending_before [Time]
                  #   @param starting_at [Time]
                end

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::AccessSchedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit#contract
              class Contract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit#invoice_contract
              class InvoiceContract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   The contract that this commit will be billed on.
                #
                #   @param id [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit#invoice_schedule
              class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::InvoiceSchedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::InvoiceSchedule::CreditType }

                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::InvoiceSchedule::ScheduleItem>, nil]
                optional :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::InvoiceSchedule::ScheduleItem] }

                # @!method initialize(credit_type: nil, schedule_items: nil)
                #   The schedule that the customer will be invoiced for this commit.
                #
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::InvoiceSchedule::CreditType]
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::InvoiceSchedule::ScheduleItem>]

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::InvoiceSchedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute quantity
                  #
                  #   @return [Float]
                  required :quantity, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute unit_price
                  #
                  #   @return [Float]
                  required :unit_price, Float

                  # @!method initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param quantity [Float]
                  #   @param timestamp [Time]
                  #   @param unit_price [Float]
                end
              end

              module Ledger
                extend MetronomeSDK::Internal::Type::Union

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember0 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember1 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember2 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember3 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember4 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember5 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember6 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember7 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember8 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember9 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember10 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember11 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember12 }

                class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember0::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember0::Type }

                  # @!method initialize(amount:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember0::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember0#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember1::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember1::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember1::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember1#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute new_contract_id
                  #
                  #   @return [String]
                  required :new_contract_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember2::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember2::Type }

                  # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param new_contract_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember2::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember2#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember3::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember3::Type }

                  # @!method initialize(amount:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember3::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember3#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember4::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember4::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember4::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember4#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember5::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember5::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember5::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember5#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember6 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember6::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember6::Type }

                  # @!method initialize(amount:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember6::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember6#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember7 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember7::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember7::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember7::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember7#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember8 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute new_contract_id
                  #
                  #   @return [String]
                  required :new_contract_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember8::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember8::Type }

                  # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param new_contract_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember8::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember8#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember9 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember9::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember9::Type }

                  # @!method initialize(amount:, invoice_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember9::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember9#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember10 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute reason
                  #
                  #   @return [String]
                  required :reason, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember10::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember10::Type }

                  # @!method initialize(amount:, reason:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param reason [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember10::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember10#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember11 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute reason
                  #
                  #   @return [String]
                  required :reason, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember11::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember11::Type }

                  # @!method initialize(amount:, reason:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param reason [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember11::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember11#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember12 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember12::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember12::Type }

                  # @!method initialize(amount:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember12::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember12#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember5, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember6, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember7, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember8, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember9, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember10, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember11, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember12)]

                define_sorbet_constant!(:Variants) do
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember0,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember1,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember2,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember3,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember4,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember5,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember6,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember7,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember8,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember9,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember10,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember11,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit::Ledger::UnionMember12
                    )
                  end
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Commit#rolled_over_from
              class RolledOverFrom < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute commit_id
                #
                #   @return [String]
                required :commit_id, String

                # @!attribute contract_id
                #
                #   @return [String]
                required :contract_id, String

                # @!method initialize(commit_id:, contract_id:)
                #   @param commit_id [String]
                #   @param contract_id [String]
              end
            end

            class Override < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute applicable_product_tags
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute credit_type
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::CreditType, nil]
              optional :credit_type,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::CreditType }

              # @!attribute ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute entitled
              #
              #   @return [Boolean, nil]
              optional :entitled, MetronomeSDK::Internal::Type::Boolean

              # @!attribute is_commit_specific
              #
              #   @return [Boolean, nil]
              optional :is_commit_specific, MetronomeSDK::Internal::Type::Boolean

              # @!attribute is_prorated
              #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #   set to true.
              #
              #   @return [Boolean, nil]
              optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

              # @!attribute multiplier
              #
              #   @return [Float, nil]
              optional :multiplier, Float

              # @!attribute override_specifiers
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverrideSpecifier>, nil]
              optional :override_specifiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverrideSpecifier] }

              # @!attribute override_tiers
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverrideTier>, nil]
              optional :override_tiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverrideTier] }

              # @!attribute overwrite_rate
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate, nil]
              optional :overwrite_rate,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate }

              # @!attribute price
              #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
              #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!attribute priority
              #
              #   @return [Float, nil]
              optional :priority, Float

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::Product, nil]
              optional :product,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::Product }

              # @!attribute quantity
              #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::RateType }

              # @!attribute target
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::Target, nil]
              optional :target,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::Target }

              # @!attribute tiers
              #   Only set for TIERED rate_type.
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::Tier>, nil]
              optional :tiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::Tier] }

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::Type, nil]
              optional :type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::Type }

              # @!attribute value
              #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
              #   processors.
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :value, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

              # @!method initialize(id:, starting_at:, applicable_product_tags: nil, credit_type: nil, ending_before: nil, entitled: nil, is_commit_specific: nil, is_prorated: nil, multiplier: nil, override_specifiers: nil, override_tiers: nil, overwrite_rate: nil, price: nil, priority: nil, product: nil, quantity: nil, rate_type: nil, target: nil, tiers: nil, type: nil, value: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override} for
              #   more details.
              #
              #   @param id [String]
              #
              #   @param starting_at [Time]
              #
              #   @param applicable_product_tags [Array<String>]
              #
              #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::CreditType]
              #
              #   @param ending_before [Time]
              #
              #   @param entitled [Boolean]
              #
              #   @param is_commit_specific [Boolean]
              #
              #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #
              #   @param multiplier [Float]
              #
              #   @param override_specifiers [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverrideSpecifier>]
              #
              #   @param override_tiers [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverrideTier>]
              #
              #   @param overwrite_rate [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate]
              #
              #   @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, t
              #
              #   @param priority [Float]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::Product]
              #
              #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::RateType]
              #
              #   @param target [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::Target]
              #
              #   @param tiers [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::Tier>] Only set for TIERED rate_type.
              #
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::Type]
              #
              #   @param value [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override#credit_type
              class CreditType < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute commit_ids
                #
                #   @return [Array<String>, nil]
                optional :commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute presentation_group_values
                #
                #   @return [Hash{Symbol=>String, nil}, nil]
                optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String, nil?: true]

                # @!attribute pricing_group_values
                #
                #   @return [Hash{Symbol=>String}, nil]
                optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

                # @!attribute product_id
                #
                #   @return [String, nil]
                optional :product_id, String

                # @!attribute product_tags
                #
                #   @return [Array<String>, nil]
                optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute recurring_commit_ids
                #
                #   @return [Array<String>, nil]
                optional :recurring_commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute recurring_credit_ids
                #
                #   @return [Array<String>, nil]
                optional :recurring_credit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!method initialize(commit_ids: nil, presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, recurring_commit_ids: nil, recurring_credit_ids: nil)
                #   @param commit_ids [Array<String>]
                #   @param presentation_group_values [Hash{Symbol=>String, nil}]
                #   @param pricing_group_values [Hash{Symbol=>String}]
                #   @param product_id [String]
                #   @param product_tags [Array<String>]
                #   @param recurring_commit_ids [Array<String>]
                #   @param recurring_credit_ids [Array<String>]
              end

              class OverrideTier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute multiplier
                #
                #   @return [Float]
                required :multiplier, Float

                # @!attribute size
                #
                #   @return [Float, nil]
                optional :size, Float

                # @!method initialize(multiplier:, size: nil)
                #   @param multiplier [Float]
                #   @param size [Float]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override#overwrite_rate
              class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute rate_type
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate::RateType]
                required :rate_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate::RateType }

                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate::CreditType }

                # @!attribute custom_rate
                #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
                #   processors.
                #
                #   @return [Hash{Symbol=>Object}, nil]
                optional :custom_rate,
                         MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

                # @!attribute is_prorated
                #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
                #   set to true.
                #
                #   @return [Boolean, nil]
                optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

                # @!attribute price
                #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
                #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
                #
                #   @return [Float, nil]
                optional :price, Float

                # @!attribute quantity
                #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!attribute tiers
                #   Only set for TIERED rate_type.
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate::Tier>, nil]
                optional :tiers,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate::Tier] }

                # @!method initialize(rate_type:, credit_type: nil, custom_rate: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate}
                #   for more details.
                #
                #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate::RateType]
                #
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate::CreditType]
                #
                #   @param custom_rate [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo
                #
                #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
                #
                #   @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, t
                #
                #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
                #
                #   @param tiers [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate::Tier>] Only set for TIERED rate_type.

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate#rate_type
                module RateType
                  extend MetronomeSDK::Internal::Type::Enum

                  FLAT = :FLAT
                  PERCENTAGE = :PERCENTAGE
                  SUBSCRIPTION = :SUBSCRIPTION
                  TIERED = :TIERED
                  CUSTOM = :CUSTOM

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override::OverwriteRate#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end

                class Tier < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute price
                  #
                  #   @return [Float]
                  required :price, Float

                  # @!attribute size
                  #
                  #   @return [Float, nil]
                  optional :size, Float

                  # @!method initialize(price:, size: nil)
                  #   @param price [Float]
                  #   @param size [Float]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                FLAT = :FLAT
                PERCENTAGE = :PERCENTAGE
                SUBSCRIPTION = :SUBSCRIPTION
                TIERED = :TIERED
                CUSTOM = :CUSTOM

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override#target
              module Target
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              class Tier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute price
                #
                #   @return [Float]
                required :price, Float

                # @!attribute size
                #
                #   @return [Float, nil]
                optional :size, Float

                # @!method initialize(price:, size: nil)
                #   @param price [Float]
                #   @param size [Float]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Override#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                OVERWRITE = :OVERWRITE
                MULTIPLIER = :MULTIPLIER
                TIERED = :TIERED

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge::Product]
              required :product,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge::Product }

              # @!attribute schedule
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge::Schedule]
              required :schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge::Schedule }

              # @!attribute archived_at
              #
              #   @return [Time, nil]
              optional :archived_at, Time

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute name
              #   displayed on invoices
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!method initialize(id:, product:, schedule:, archived_at: nil, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge::Product]
              #
              #   @param schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge::Schedule]
              #
              #   @param archived_at [Time]
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param name [String] displayed on invoices
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge#schedule
              class Schedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge::Schedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge::Schedule::CreditType }

                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge::Schedule::ScheduleItem>, nil]
                optional :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge::Schedule::ScheduleItem] }

                # @!method initialize(credit_type: nil, schedule_items: nil)
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge::Schedule::CreditType]
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge::Schedule::ScheduleItem>]

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ScheduledCharge::Schedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute quantity
                  #
                  #   @return [Float]
                  required :quantity, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute unit_price
                  #
                  #   @return [Float]
                  required :unit_price, Float

                  # @!method initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param quantity [Float]
                  #   @param timestamp [Time]
                  #   @param unit_price [Float]
                end
              end
            end

            class Credit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Product]
              required :product, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Product }

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Type]
              required :type, enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Type }

              # @!attribute access_schedule
              #   The schedule that the customer will gain access to the credits.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::AccessSchedule, nil]
              optional :access_schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::AccessSchedule }

              # @!attribute applicable_contract_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute balance
              #   The current balance of the credit or commit. This balance reflects the amount of
              #   credit or commit that the customer has access to use at this moment - thus,
              #   expired and upcoming credit or commit segments contribute 0 to the balance. The
              #   balance will match the sum of all ledger entries with the exception of the case
              #   where the sum of negative manual ledger entries exceeds the positive amount
              #   remaining on the credit or commit - in that case, the balance will be 0. All
              #   manual ledger entries associated with active credit or commit segments are
              #   included in the balance, including future-dated manual ledger entries.
              #
              #   @return [Float, nil]
              optional :balance, Float

              # @!attribute contract
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Contract, nil]
              optional :contract,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Contract }

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute ledger
              #   A list of ordered events that impact the balance of a credit. For example, an
              #   invoice deduction or an expiration.
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember5>, nil]
              optional :ledger,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger] }

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!attribute priority
              #   If multiple credits or commits are applicable, the one with the lower priority
              #   will apply first.
              #
              #   @return [Float, nil]
              optional :priority, Float

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::RateType }

              # @!attribute salesforce_opportunity_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :salesforce_opportunity_id, String

              # @!attribute uniqueness_key
              #   Prevents the creation of duplicates. If a request to create a commit or credit
              #   is made with a uniqueness key that was previously used to create a commit or
              #   credit, a new record will not be created and the request will fail with a 409
              #   error.
              #
              #   @return [String, nil]
              optional :uniqueness_key, String

              # @!method initialize(id:, product:, type:, access_schedule: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, salesforce_opportunity_id: nil, uniqueness_key: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit} for
              #   more details.
              #
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Product]
              #
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Type]
              #
              #   @param access_schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::AccessSchedule] The schedule that the customer will gain access to the credits.
              #
              #   @param applicable_contract_ids [Array<String>]
              #
              #   @param applicable_product_ids [Array<String>]
              #
              #   @param applicable_product_tags [Array<String>]
              #
              #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
              #
              #   @param contract [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Contract]
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param description [String]
              #
              #   @param ledger [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember5>] A list of ordered events that impact the balance of a credit. For example, an in
              #
              #   @param name [String]
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::RateType]
              #
              #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                CREDIT = :CREDIT

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit#access_schedule
              class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::AccessSchedule::ScheduleItem>]
                required :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::AccessSchedule::ScheduleItem] }

                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::AccessSchedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::AccessSchedule::CreditType }

                # @!method initialize(schedule_items:, credit_type: nil)
                #   The schedule that the customer will gain access to the credits.
                #
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::AccessSchedule::ScheduleItem>]
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::AccessSchedule::CreditType]

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute ending_before
                  #
                  #   @return [Time]
                  required :ending_before, Time

                  # @!attribute starting_at
                  #
                  #   @return [Time]
                  required :starting_at, Time

                  # @!method initialize(id:, amount:, ending_before:, starting_at:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param ending_before [Time]
                  #   @param starting_at [Time]
                end

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::AccessSchedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit#contract
              class Contract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              module Ledger
                extend MetronomeSDK::Internal::Type::Union

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember0 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember1 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember2 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember3 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember4 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember5 }

                class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember0::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember0::Type }

                  # @!method initialize(amount:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember0::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember0#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_SEGMENT_START = :CREDIT_SEGMENT_START

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember1::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember1::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember1::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember1#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_AUTOMATED_INVOICE_DEDUCTION = :CREDIT_AUTOMATED_INVOICE_DEDUCTION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember2::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember2::Type }

                  # @!method initialize(amount:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember2::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember2#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_EXPIRATION = :CREDIT_EXPIRATION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember3::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember3::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember3::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember3#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_CANCELED = :CREDIT_CANCELED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember4::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember4::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember4::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember4#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_CREDITED = :CREDIT_CREDITED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute reason
                  #
                  #   @return [String]
                  required :reason, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember5::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember5::Type }

                  # @!method initialize(amount:, reason:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param reason [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember5::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember5#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_MANUAL = :CREDIT_MANUAL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember5)]

                define_sorbet_constant!(:Variants) do
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember0,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember1,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember2,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember3,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember4,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit::Ledger::UnionMember5
                    )
                  end
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Credit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Discount < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount::Product]
              required :product,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount::Product }

              # @!attribute schedule
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount::Schedule]
              required :schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount::Schedule }

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!method initialize(id:, product:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount::Product]
              #
              #   @param schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount::Schedule]
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param name [String]
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount#schedule
              class Schedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount::Schedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount::Schedule::CreditType }

                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount::Schedule::ScheduleItem>, nil]
                optional :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount::Schedule::ScheduleItem] }

                # @!method initialize(credit_type: nil, schedule_items: nil)
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount::Schedule::CreditType]
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount::Schedule::ScheduleItem>]

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::Discount::Schedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute quantity
                  #
                  #   @return [Float]
                  required :quantity, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute unit_price
                  #
                  #   @return [Float]
                  required :unit_price, Float

                  # @!method initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param quantity [Float]
                  #   @param timestamp [Time]
                  #   @param unit_price [Float]
                end
              end
            end

            class ProfessionalService < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute max_amount
              #   Maximum amount for the term.
              #
              #   @return [Float]
              required :max_amount, Float

              # @!attribute product_id
              #
              #   @return [String]
              required :product_id, String

              # @!attribute quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #   amount.
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #   amount and must be specified.
              #
              #   @return [Float]
              required :unit_price, Float

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!method initialize(id:, max_amount:, product_id:, quantity:, unit_price:, custom_fields: nil, description: nil, netsuite_sales_order_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ProfessionalService}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param max_amount [Float] Maximum amount for the term.
              #
              #   @param product_id [String]
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param description [String]
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            end

            class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute reseller_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType]
              required :reseller_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType }

              # @!attribute aws_account_number
              #
              #   @return [String, nil]
              optional :aws_account_number, String

              # @!attribute aws_offer_id
              #
              #   @return [String, nil]
              optional :aws_offer_id, String

              # @!attribute aws_payer_reference_id
              #
              #   @return [String, nil]
              optional :aws_payer_reference_id, String

              # @!attribute ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time, nil?: true

              # @!attribute fraction
              #
              #   @return [Float, nil]
              optional :fraction, Float

              # @!attribute gcp_account_id
              #
              #   @return [String, nil]
              optional :gcp_account_id, String

              # @!attribute gcp_offer_id
              #
              #   @return [String, nil]
              optional :gcp_offer_id, String

              # @!attribute netsuite_reseller_id
              #
              #   @return [String, nil]
              optional :netsuite_reseller_id, String

              # @!attribute reseller_contract_value
              #
              #   @return [Float, nil]
              optional :reseller_contract_value, Float

              # @!attribute starting_at
              #
              #   @return [Time, nil]
              optional :starting_at, Time

              # @!method initialize(reseller_type:, aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil, ending_before: nil, fraction: nil, gcp_account_id: nil, gcp_offer_id: nil, netsuite_reseller_id: nil, reseller_contract_value: nil, starting_at: nil)
              #   @param reseller_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType]
              #   @param aws_account_number [String]
              #   @param aws_offer_id [String]
              #   @param aws_payer_reference_id [String]
              #   @param ending_before [Time, nil]
              #   @param fraction [Float]
              #   @param gcp_account_id [String]
              #   @param gcp_offer_id [String]
              #   @param netsuite_reseller_id [String]
              #   @param reseller_contract_value [Float]
              #   @param starting_at [Time]

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty#reseller_type
              module ResellerType
                extend MetronomeSDK::Internal::Type::Enum

                AWS = :AWS
                AWS_PRO_SERVICE = :AWS_PRO_SERVICE
                GCP = :GCP
                GCP_PRO_SERVICE = :GCP_PRO_SERVICE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @see MetronomeSDK::Models::V1::ContractListResponse::Data#current
          class Current < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute commits
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit>]
            required :commits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit] }

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute created_by
            #
            #   @return [String]
            required :created_by, String

            # @!attribute overrides
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override>]
            required :overrides,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override] }

            # @!attribute scheduled_charges
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge>]
            required :scheduled_charges,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge] }

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute transitions
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Transition>]
            required :transitions,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Transition] }

            # @!attribute usage_statement_schedule
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageStatementSchedule]
            required :usage_statement_schedule,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageStatementSchedule }

            # @!attribute credits
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit>, nil]
            optional :credits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit] }

            # @!attribute discounts
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount>, nil]
            optional :discounts,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount] }

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute net_payment_terms_days
            #
            #   @return [Float, nil]
            optional :net_payment_terms_days, Float

            # @!attribute netsuite_sales_order_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!attribute prepaid_balance_threshold_configuration
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration, nil]
            optional :prepaid_balance_threshold_configuration,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration }

            # @!attribute professional_services
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ProfessionalService>, nil]
            optional :professional_services,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ProfessionalService] }

            # @!attribute rate_card_id
            #
            #   @return [String, nil]
            optional :rate_card_id, String

            # @!attribute recurring_commits
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit>, nil]
            optional :recurring_commits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit] }

            # @!attribute recurring_credits
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit>, nil]
            optional :recurring_credits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit] }

            # @!attribute reseller_royalties
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ResellerRoyalty>, nil]
            optional :reseller_royalties,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ResellerRoyalty] }

            # @!attribute salesforce_opportunity_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :salesforce_opportunity_id, String

            # @!attribute scheduled_charges_on_usage_invoices
            #   Determines which scheduled and commit charges to consolidate onto the Contract's
            #   usage invoice. The charge's `timestamp` must match the usage invoice's
            #   `ending_before` date for consolidation to occur. This field cannot be modified
            #   after a Contract has been created. If this field is omitted, charges will appear
            #   on a separate invoice from usage charges.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledChargesOnUsageInvoices, nil]
            optional :scheduled_charges_on_usage_invoices,
                     enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledChargesOnUsageInvoices }

            # @!attribute spend_threshold_configuration
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration, nil]
            optional :spend_threshold_configuration,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration }

            # @!attribute total_contract_value
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Float, nil]
            optional :total_contract_value, Float

            # @!attribute usage_filter
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter, nil]
            optional :usage_filter, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter }

            # @!method initialize(commits:, created_at:, created_by:, overrides:, scheduled_charges:, starting_at:, transitions:, usage_statement_schedule:, credits: nil, discounts: nil, ending_before: nil, name: nil, net_payment_terms_days: nil, netsuite_sales_order_id: nil, prepaid_balance_threshold_configuration: nil, professional_services: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, reseller_royalties: nil, salesforce_opportunity_id: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, total_contract_value: nil, usage_filter: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current} for more
            #   details.
            #
            #   @param commits [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit>]
            #
            #   @param created_at [Time]
            #
            #   @param created_by [String]
            #
            #   @param overrides [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override>]
            #
            #   @param scheduled_charges [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge>]
            #
            #   @param starting_at [Time]
            #
            #   @param transitions [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Transition>]
            #
            #   @param usage_statement_schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageStatementSchedule]
            #
            #   @param credits [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit>]
            #
            #   @param discounts [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount>] This field's availability is dependent on your client's configuration.
            #
            #   @param ending_before [Time]
            #
            #   @param name [String]
            #
            #   @param net_payment_terms_days [Float]
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration]
            #
            #   @param professional_services [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ProfessionalService>] This field's availability is dependent on your client's configuration.
            #
            #   @param rate_card_id [String]
            #
            #   @param recurring_commits [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit>]
            #
            #   @param recurring_credits [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit>]
            #
            #   @param reseller_royalties [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ResellerRoyalty>] This field's availability is dependent on your client's configuration.
            #
            #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
            #
            #   @param spend_threshold_configuration [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration]
            #
            #   @param total_contract_value [Float] This field's availability is dependent on your client's configuration.
            #
            #   @param usage_filter [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter]

            class Commit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Product]
              required :product, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Product }

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Type]
              required :type, enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Type }

              # @!attribute access_schedule
              #   The schedule that the customer will gain access to the credits purposed with
              #   this commit.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::AccessSchedule, nil]
              optional :access_schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::AccessSchedule }

              # @!attribute amount
              #   (DEPRECATED) Use access_schedule + invoice_schedule instead.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!attribute applicable_contract_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute archived_at
              #   RFC 3339 timestamp indicating when the commit was archived. If not provided, the
              #   commit is not archived.
              #
              #   @return [Time, nil]
              optional :archived_at, Time

              # @!attribute balance
              #   The current balance of the credit or commit. This balance reflects the amount of
              #   credit or commit that the customer has access to use at this moment - thus,
              #   expired and upcoming credit or commit segments contribute 0 to the balance. The
              #   balance will match the sum of all ledger entries with the exception of the case
              #   where the sum of negative manual ledger entries exceeds the positive amount
              #   remaining on the credit or commit - in that case, the balance will be 0. All
              #   manual ledger entries associated with active credit or commit segments are
              #   included in the balance, including future-dated manual ledger entries.
              #
              #   @return [Float, nil]
              optional :balance, Float

              # @!attribute contract
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Contract, nil]
              optional :contract, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Contract }

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute invoice_contract
              #   The contract that this commit will be billed on.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::InvoiceContract, nil]
              optional :invoice_contract,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::InvoiceContract }

              # @!attribute invoice_schedule
              #   The schedule that the customer will be invoiced for this commit.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::InvoiceSchedule, nil]
              optional :invoice_schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::InvoiceSchedule }

              # @!attribute ledger
              #   A list of ordered events that impact the balance of a commit. For example, an
              #   invoice deduction or a rollover.
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember5, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember6, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember7, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember8, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember9, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember10, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember11, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember12>, nil]
              optional :ledger,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger] }

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!attribute priority
              #   If multiple credits or commits are applicable, the one with the lower priority
              #   will apply first.
              #
              #   @return [Float, nil]
              optional :priority, Float

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::RateType }

              # @!attribute rolled_over_from
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::RolledOverFrom, nil]
              optional :rolled_over_from,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::RolledOverFrom }

              # @!attribute rollover_fraction
              #
              #   @return [Float, nil]
              optional :rollover_fraction, Float

              # @!attribute salesforce_opportunity_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :salesforce_opportunity_id, String

              # @!attribute uniqueness_key
              #   Prevents the creation of duplicates. If a request to create a commit or credit
              #   is made with a uniqueness key that was previously used to create a commit or
              #   credit, a new record will not be created and the request will fail with a 409
              #   error.
              #
              #   @return [String, nil]
              optional :uniqueness_key, String

              # @!method initialize(id:, product:, type:, access_schedule: nil, amount: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, archived_at: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, invoice_contract: nil, invoice_schedule: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, rolled_over_from: nil, rollover_fraction: nil, salesforce_opportunity_id: nil, uniqueness_key: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit} for more
              #   details.
              #
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Product]
              #
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Type]
              #
              #   @param access_schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::AccessSchedule] The schedule that the customer will gain access to the credits purposed with thi
              #
              #   @param amount [Float] (DEPRECATED) Use access_schedule + invoice_schedule instead.
              #
              #   @param applicable_contract_ids [Array<String>]
              #
              #   @param applicable_product_ids [Array<String>]
              #
              #   @param applicable_product_tags [Array<String>]
              #
              #   @param archived_at [Time] RFC 3339 timestamp indicating when the commit was archived. If not provided, the
              #
              #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
              #
              #   @param contract [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Contract]
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param description [String]
              #
              #   @param invoice_contract [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::InvoiceContract] The contract that this commit will be billed on.
              #
              #   @param invoice_schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::InvoiceSchedule] The schedule that the customer will be invoiced for this commit.
              #
              #   @param ledger [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember5, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember6, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember7, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember8, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember9, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember10, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember11, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember12>] A list of ordered events that impact the balance of a commit. For example, an in
              #
              #   @param name [String]
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::RateType]
              #
              #   @param rolled_over_from [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::RolledOverFrom]
              #
              #   @param rollover_fraction [Float]
              #
              #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID = :PREPAID
                POSTPAID = :POSTPAID

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit#access_schedule
              class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::AccessSchedule::ScheduleItem>]
                required :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::AccessSchedule::ScheduleItem] }

                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::AccessSchedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::AccessSchedule::CreditType }

                # @!method initialize(schedule_items:, credit_type: nil)
                #   The schedule that the customer will gain access to the credits purposed with
                #   this commit.
                #
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::AccessSchedule::ScheduleItem>]
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::AccessSchedule::CreditType]

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute ending_before
                  #
                  #   @return [Time]
                  required :ending_before, Time

                  # @!attribute starting_at
                  #
                  #   @return [Time]
                  required :starting_at, Time

                  # @!method initialize(id:, amount:, ending_before:, starting_at:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param ending_before [Time]
                  #   @param starting_at [Time]
                end

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::AccessSchedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit#contract
              class Contract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit#invoice_contract
              class InvoiceContract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   The contract that this commit will be billed on.
                #
                #   @param id [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit#invoice_schedule
              class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::InvoiceSchedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::InvoiceSchedule::CreditType }

                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::InvoiceSchedule::ScheduleItem>, nil]
                optional :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::InvoiceSchedule::ScheduleItem] }

                # @!method initialize(credit_type: nil, schedule_items: nil)
                #   The schedule that the customer will be invoiced for this commit.
                #
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::InvoiceSchedule::CreditType]
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::InvoiceSchedule::ScheduleItem>]

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::InvoiceSchedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute quantity
                  #
                  #   @return [Float]
                  required :quantity, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute unit_price
                  #
                  #   @return [Float]
                  required :unit_price, Float

                  # @!method initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param quantity [Float]
                  #   @param timestamp [Time]
                  #   @param unit_price [Float]
                end
              end

              module Ledger
                extend MetronomeSDK::Internal::Type::Union

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember0 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember1 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember2 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember3 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember4 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember5 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember6 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember7 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember8 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember9 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember10 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember11 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember12 }

                class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember0::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember0::Type }

                  # @!method initialize(amount:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember0::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember0#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember1::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember1::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember1::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember1#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute new_contract_id
                  #
                  #   @return [String]
                  required :new_contract_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember2::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember2::Type }

                  # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param new_contract_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember2::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember2#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember3::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember3::Type }

                  # @!method initialize(amount:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember3::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember3#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember4::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember4::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember4::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember4#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember5::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember5::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember5::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember5#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember6 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember6::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember6::Type }

                  # @!method initialize(amount:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember6::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember6#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember7 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember7::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember7::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember7::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember7#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember8 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute new_contract_id
                  #
                  #   @return [String]
                  required :new_contract_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember8::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember8::Type }

                  # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param new_contract_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember8::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember8#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember9 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember9::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember9::Type }

                  # @!method initialize(amount:, invoice_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember9::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember9#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember10 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute reason
                  #
                  #   @return [String]
                  required :reason, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember10::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember10::Type }

                  # @!method initialize(amount:, reason:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param reason [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember10::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember10#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember11 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute reason
                  #
                  #   @return [String]
                  required :reason, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember11::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember11::Type }

                  # @!method initialize(amount:, reason:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param reason [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember11::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember11#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember12 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember12::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember12::Type }

                  # @!method initialize(amount:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember12::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember12#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember5, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember6, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember7, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember8, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember9, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember10, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember11, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember12)]

                define_sorbet_constant!(:Variants) do
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember0,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember1,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember2,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember3,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember4,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember5,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember6,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember7,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember8,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember9,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember10,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember11,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit::Ledger::UnionMember12
                    )
                  end
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Commit#rolled_over_from
              class RolledOverFrom < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute commit_id
                #
                #   @return [String]
                required :commit_id, String

                # @!attribute contract_id
                #
                #   @return [String]
                required :contract_id, String

                # @!method initialize(commit_id:, contract_id:)
                #   @param commit_id [String]
                #   @param contract_id [String]
              end
            end

            class Override < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute applicable_product_tags
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute credit_type
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::CreditType, nil]
              optional :credit_type,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::CreditType }

              # @!attribute ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute entitled
              #
              #   @return [Boolean, nil]
              optional :entitled, MetronomeSDK::Internal::Type::Boolean

              # @!attribute is_commit_specific
              #
              #   @return [Boolean, nil]
              optional :is_commit_specific, MetronomeSDK::Internal::Type::Boolean

              # @!attribute is_prorated
              #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #   set to true.
              #
              #   @return [Boolean, nil]
              optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

              # @!attribute multiplier
              #
              #   @return [Float, nil]
              optional :multiplier, Float

              # @!attribute override_specifiers
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverrideSpecifier>, nil]
              optional :override_specifiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverrideSpecifier] }

              # @!attribute override_tiers
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverrideTier>, nil]
              optional :override_tiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverrideTier] }

              # @!attribute overwrite_rate
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate, nil]
              optional :overwrite_rate,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate }

              # @!attribute price
              #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
              #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!attribute priority
              #
              #   @return [Float, nil]
              optional :priority, Float

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::Product, nil]
              optional :product, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::Product }

              # @!attribute quantity
              #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::RateType }

              # @!attribute target
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::Target, nil]
              optional :target,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::Target }

              # @!attribute tiers
              #   Only set for TIERED rate_type.
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::Tier>, nil]
              optional :tiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::Tier] }

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::Type, nil]
              optional :type, enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::Type }

              # @!attribute value
              #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
              #   processors.
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :value, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

              # @!method initialize(id:, starting_at:, applicable_product_tags: nil, credit_type: nil, ending_before: nil, entitled: nil, is_commit_specific: nil, is_prorated: nil, multiplier: nil, override_specifiers: nil, override_tiers: nil, overwrite_rate: nil, price: nil, priority: nil, product: nil, quantity: nil, rate_type: nil, target: nil, tiers: nil, type: nil, value: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override} for
              #   more details.
              #
              #   @param id [String]
              #
              #   @param starting_at [Time]
              #
              #   @param applicable_product_tags [Array<String>]
              #
              #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::CreditType]
              #
              #   @param ending_before [Time]
              #
              #   @param entitled [Boolean]
              #
              #   @param is_commit_specific [Boolean]
              #
              #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #
              #   @param multiplier [Float]
              #
              #   @param override_specifiers [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverrideSpecifier>]
              #
              #   @param override_tiers [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverrideTier>]
              #
              #   @param overwrite_rate [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate]
              #
              #   @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, t
              #
              #   @param priority [Float]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::Product]
              #
              #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::RateType]
              #
              #   @param target [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::Target]
              #
              #   @param tiers [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::Tier>] Only set for TIERED rate_type.
              #
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::Type]
              #
              #   @param value [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override#credit_type
              class CreditType < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute commit_ids
                #
                #   @return [Array<String>, nil]
                optional :commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute presentation_group_values
                #
                #   @return [Hash{Symbol=>String, nil}, nil]
                optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String, nil?: true]

                # @!attribute pricing_group_values
                #
                #   @return [Hash{Symbol=>String}, nil]
                optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

                # @!attribute product_id
                #
                #   @return [String, nil]
                optional :product_id, String

                # @!attribute product_tags
                #
                #   @return [Array<String>, nil]
                optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute recurring_commit_ids
                #
                #   @return [Array<String>, nil]
                optional :recurring_commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute recurring_credit_ids
                #
                #   @return [Array<String>, nil]
                optional :recurring_credit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!method initialize(commit_ids: nil, presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, recurring_commit_ids: nil, recurring_credit_ids: nil)
                #   @param commit_ids [Array<String>]
                #   @param presentation_group_values [Hash{Symbol=>String, nil}]
                #   @param pricing_group_values [Hash{Symbol=>String}]
                #   @param product_id [String]
                #   @param product_tags [Array<String>]
                #   @param recurring_commit_ids [Array<String>]
                #   @param recurring_credit_ids [Array<String>]
              end

              class OverrideTier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute multiplier
                #
                #   @return [Float]
                required :multiplier, Float

                # @!attribute size
                #
                #   @return [Float, nil]
                optional :size, Float

                # @!method initialize(multiplier:, size: nil)
                #   @param multiplier [Float]
                #   @param size [Float]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override#overwrite_rate
              class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute rate_type
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate::RateType]
                required :rate_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate::RateType }

                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate::CreditType }

                # @!attribute custom_rate
                #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
                #   processors.
                #
                #   @return [Hash{Symbol=>Object}, nil]
                optional :custom_rate,
                         MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

                # @!attribute is_prorated
                #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
                #   set to true.
                #
                #   @return [Boolean, nil]
                optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

                # @!attribute price
                #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
                #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
                #
                #   @return [Float, nil]
                optional :price, Float

                # @!attribute quantity
                #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!attribute tiers
                #   Only set for TIERED rate_type.
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate::Tier>, nil]
                optional :tiers,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate::Tier] }

                # @!method initialize(rate_type:, credit_type: nil, custom_rate: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate}
                #   for more details.
                #
                #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate::RateType]
                #
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate::CreditType]
                #
                #   @param custom_rate [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo
                #
                #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
                #
                #   @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, t
                #
                #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
                #
                #   @param tiers [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate::Tier>] Only set for TIERED rate_type.

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate#rate_type
                module RateType
                  extend MetronomeSDK::Internal::Type::Enum

                  FLAT = :FLAT
                  PERCENTAGE = :PERCENTAGE
                  SUBSCRIPTION = :SUBSCRIPTION
                  TIERED = :TIERED
                  CUSTOM = :CUSTOM

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override::OverwriteRate#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end

                class Tier < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute price
                  #
                  #   @return [Float]
                  required :price, Float

                  # @!attribute size
                  #
                  #   @return [Float, nil]
                  optional :size, Float

                  # @!method initialize(price:, size: nil)
                  #   @param price [Float]
                  #   @param size [Float]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                FLAT = :FLAT
                PERCENTAGE = :PERCENTAGE
                SUBSCRIPTION = :SUBSCRIPTION
                TIERED = :TIERED
                CUSTOM = :CUSTOM

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override#target
              module Target
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              class Tier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute price
                #
                #   @return [Float]
                required :price, Float

                # @!attribute size
                #
                #   @return [Float, nil]
                optional :size, Float

                # @!method initialize(price:, size: nil)
                #   @param price [Float]
                #   @param size [Float]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Override#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                OVERWRITE = :OVERWRITE
                MULTIPLIER = :MULTIPLIER
                TIERED = :TIERED

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge::Product]
              required :product,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge::Product }

              # @!attribute schedule
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge::Schedule]
              required :schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge::Schedule }

              # @!attribute archived_at
              #
              #   @return [Time, nil]
              optional :archived_at, Time

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute name
              #   displayed on invoices
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!method initialize(id:, product:, schedule:, archived_at: nil, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge::Product]
              #
              #   @param schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge::Schedule]
              #
              #   @param archived_at [Time]
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param name [String] displayed on invoices
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge#schedule
              class Schedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge::Schedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge::Schedule::CreditType }

                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge::Schedule::ScheduleItem>, nil]
                optional :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge::Schedule::ScheduleItem] }

                # @!method initialize(credit_type: nil, schedule_items: nil)
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge::Schedule::CreditType]
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge::Schedule::ScheduleItem>]

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ScheduledCharge::Schedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute quantity
                  #
                  #   @return [Float]
                  required :quantity, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute unit_price
                  #
                  #   @return [Float]
                  required :unit_price, Float

                  # @!method initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param quantity [Float]
                  #   @param timestamp [Time]
                  #   @param unit_price [Float]
                end
              end
            end

            class Transition < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute from_contract_id
              #
              #   @return [String]
              required :from_contract_id, String

              # @!attribute to_contract_id
              #
              #   @return [String]
              required :to_contract_id, String

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Transition::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Transition::Type }

              # @!method initialize(from_contract_id:, to_contract_id:, type:)
              #   @param from_contract_id [String]
              #   @param to_contract_id [String]
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Transition::Type]

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Transition#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                SUPERSEDE = :SUPERSEDE
                RENEWAL = :RENEWAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current#usage_statement_schedule
            class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute billing_anchor_date
              #   Contract usage statements follow a selected cadence based on this date.
              #
              #   @return [Time]
              required :billing_anchor_date, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageStatementSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageStatementSchedule::Frequency }

              # @!method initialize(billing_anchor_date:, frequency:)
              #   @param billing_anchor_date [Time] Contract usage statements follow a selected cadence based on this date.
              #
              #   @param frequency [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageStatementSchedule::Frequency]

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageStatementSchedule#frequency
              module Frequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Credit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Product]
              required :product, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Product }

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Type]
              required :type, enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Type }

              # @!attribute access_schedule
              #   The schedule that the customer will gain access to the credits.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::AccessSchedule, nil]
              optional :access_schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::AccessSchedule }

              # @!attribute applicable_contract_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute balance
              #   The current balance of the credit or commit. This balance reflects the amount of
              #   credit or commit that the customer has access to use at this moment - thus,
              #   expired and upcoming credit or commit segments contribute 0 to the balance. The
              #   balance will match the sum of all ledger entries with the exception of the case
              #   where the sum of negative manual ledger entries exceeds the positive amount
              #   remaining on the credit or commit - in that case, the balance will be 0. All
              #   manual ledger entries associated with active credit or commit segments are
              #   included in the balance, including future-dated manual ledger entries.
              #
              #   @return [Float, nil]
              optional :balance, Float

              # @!attribute contract
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Contract, nil]
              optional :contract, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Contract }

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute ledger
              #   A list of ordered events that impact the balance of a credit. For example, an
              #   invoice deduction or an expiration.
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember5>, nil]
              optional :ledger,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger] }

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!attribute priority
              #   If multiple credits or commits are applicable, the one with the lower priority
              #   will apply first.
              #
              #   @return [Float, nil]
              optional :priority, Float

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::RateType }

              # @!attribute salesforce_opportunity_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :salesforce_opportunity_id, String

              # @!attribute uniqueness_key
              #   Prevents the creation of duplicates. If a request to create a commit or credit
              #   is made with a uniqueness key that was previously used to create a commit or
              #   credit, a new record will not be created and the request will fail with a 409
              #   error.
              #
              #   @return [String, nil]
              optional :uniqueness_key, String

              # @!method initialize(id:, product:, type:, access_schedule: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, salesforce_opportunity_id: nil, uniqueness_key: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit} for more
              #   details.
              #
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Product]
              #
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Type]
              #
              #   @param access_schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::AccessSchedule] The schedule that the customer will gain access to the credits.
              #
              #   @param applicable_contract_ids [Array<String>]
              #
              #   @param applicable_product_ids [Array<String>]
              #
              #   @param applicable_product_tags [Array<String>]
              #
              #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
              #
              #   @param contract [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Contract]
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param description [String]
              #
              #   @param ledger [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember5>] A list of ordered events that impact the balance of a credit. For example, an in
              #
              #   @param name [String]
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::RateType]
              #
              #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                CREDIT = :CREDIT

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit#access_schedule
              class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::AccessSchedule::ScheduleItem>]
                required :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::AccessSchedule::ScheduleItem] }

                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::AccessSchedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::AccessSchedule::CreditType }

                # @!method initialize(schedule_items:, credit_type: nil)
                #   The schedule that the customer will gain access to the credits.
                #
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::AccessSchedule::ScheduleItem>]
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::AccessSchedule::CreditType]

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute ending_before
                  #
                  #   @return [Time]
                  required :ending_before, Time

                  # @!attribute starting_at
                  #
                  #   @return [Time]
                  required :starting_at, Time

                  # @!method initialize(id:, amount:, ending_before:, starting_at:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param ending_before [Time]
                  #   @param starting_at [Time]
                end

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::AccessSchedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit#contract
              class Contract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              module Ledger
                extend MetronomeSDK::Internal::Type::Union

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember0 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember1 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember2 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember3 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember4 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember5 }

                class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember0::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember0::Type }

                  # @!method initialize(amount:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember0::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember0#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_SEGMENT_START = :CREDIT_SEGMENT_START

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember1::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember1::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember1::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember1#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_AUTOMATED_INVOICE_DEDUCTION = :CREDIT_AUTOMATED_INVOICE_DEDUCTION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember2::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember2::Type }

                  # @!method initialize(amount:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember2::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember2#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_EXPIRATION = :CREDIT_EXPIRATION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember3::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember3::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember3::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember3#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_CANCELED = :CREDIT_CANCELED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember4::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember4::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember4::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember4#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_CREDITED = :CREDIT_CREDITED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute reason
                  #
                  #   @return [String]
                  required :reason, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember5::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember5::Type }

                  # @!method initialize(amount:, reason:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param reason [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember5::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember5#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_MANUAL = :CREDIT_MANUAL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember5)]

                define_sorbet_constant!(:Variants) do
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember0,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember1,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember2,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember3,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember4,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit::Ledger::UnionMember5
                    )
                  end
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Credit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Discount < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount::Product]
              required :product, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount::Product }

              # @!attribute schedule
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount::Schedule]
              required :schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount::Schedule }

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!method initialize(id:, product:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount::Product]
              #
              #   @param schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount::Schedule]
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param name [String]
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount#schedule
              class Schedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount::Schedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount::Schedule::CreditType }

                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount::Schedule::ScheduleItem>, nil]
                optional :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount::Schedule::ScheduleItem] }

                # @!method initialize(credit_type: nil, schedule_items: nil)
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount::Schedule::CreditType]
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount::Schedule::ScheduleItem>]

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::Discount::Schedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute quantity
                  #
                  #   @return [Float]
                  required :quantity, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute unit_price
                  #
                  #   @return [Float]
                  required :unit_price, Float

                  # @!method initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param quantity [Float]
                  #   @param timestamp [Time]
                  #   @param unit_price [Float]
                end
              end
            end

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current#prepaid_balance_threshold_configuration
            class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute commit
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::Commit]
              required :commit,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::Commit }

              # @!attribute is_enabled
              #   When set to false, the contract will not be evaluated against the
              #   threshold_amount. Toggling to true will result an immediate evaluation,
              #   regardless of prior state.
              #
              #   @return [Boolean]
              required :is_enabled, MetronomeSDK::Internal::Type::Boolean

              # @!attribute payment_gate_config
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
              required :payment_gate_config,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig }

              # @!attribute recharge_to_amount
              #   Specify the amount the balance should be recharged to.
              #
              #   @return [Float]
              required :recharge_to_amount, Float

              # @!attribute threshold_amount
              #   Specify the threshold amount for the contract. Each time the contract's prepaid
              #   balance lowers to this amount, a threshold charge will be initiated.
              #
              #   @return [Float]
              required :threshold_amount, Float

              # @!method initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration}
              #   for more details.
              #
              #   @param commit [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::Commit]
              #
              #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
              #
              #   @param payment_gate_config [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
              #
              #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
              #
              #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's prepaid

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration#commit
              class Commit < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute product_id
                #   The commit product that will be used to generate the line item for commit
                #   payment.
                #
                #   @return [String]
                required :product_id, String

                # @!attribute applicable_product_ids
                #   Which products the threshold commit applies to. If both applicable_product_ids
                #   and applicable_product_tags are not provided, the commit applies to all
                #   products.
                #
                #   @return [Array<String>, nil]
                optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute applicable_product_tags
                #   Which tags the threshold commit applies to. If both applicable_product_ids and
                #   applicable_product_tags are not provided, the commit applies to all products.
                #
                #   @return [Array<String>, nil]
                optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute description
                #
                #   @return [String, nil]
                optional :description, String

                # @!attribute name
                #   Specify the name of the line item for the threshold charge. If left blank, it
                #   will default to the commit product name.
                #
                #   @return [String, nil]
                optional :name, String

                # @!method initialize(product_id:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, name: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::Commit}
                #   for more details.
                #
                #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
                #
                #   @param applicable_product_ids [Array<String>] Which products the threshold commit applies to. If both applicable_product_ids a
                #
                #   @param applicable_product_tags [Array<String>] Which tags the threshold commit applies to. If both applicable_product_ids and a
                #
                #   @param description [String]
                #
                #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration#payment_gate_config
              class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute payment_gate_type
                #   Gate access to the commit balance based on successful collection of payment.
                #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                #   facilitate payment using your own payment integration. Select NONE if you do not
                #   wish to payment gate the commit balance.
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
                required :payment_gate_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType }

                # @!attribute stripe_config
                #   Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
                optional :stripe_config,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig }

                # @!attribute tax_type
                #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
                #   will default to NONE.
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType, nil]
                optional :tax_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType }

                # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig}
                #   for more details.
                #
                #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
                #
                #   @param stripe_config [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

                # Gate access to the commit balance based on successful collection of payment.
                # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                # facilitate payment using your own payment integration. Select NONE if you do not
                # wish to payment gate the commit balance.
                #
                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#payment_gate_type
                module PaymentGateType
                  extend MetronomeSDK::Internal::Type::Enum

                  NONE = :NONE
                  STRIPE = :STRIPE
                  EXTERNAL = :EXTERNAL

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#stripe_config
                class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute payment_type
                  #   If left blank, will default to INVOICE
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                  required :payment_type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

                  # @!method initialize(payment_type:)
                  #   Only applicable if using Stripe as your payment gateway through Metronome.
                  #
                  #   @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

                  # If left blank, will default to INVOICE
                  #
                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
                  module PaymentType
                    extend MetronomeSDK::Internal::Type::Enum

                    INVOICE = :INVOICE
                    PAYMENT_INTENT = :PAYMENT_INTENT

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                # not wish Metronome to calculate tax on your behalf. Leaving this field blank
                # will default to NONE.
                #
                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#tax_type
                module TaxType
                  extend MetronomeSDK::Internal::Type::Enum

                  NONE = :NONE
                  STRIPE = :STRIPE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end

            class ProfessionalService < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute max_amount
              #   Maximum amount for the term.
              #
              #   @return [Float]
              required :max_amount, Float

              # @!attribute product_id
              #
              #   @return [String]
              required :product_id, String

              # @!attribute quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #   amount.
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #   amount and must be specified.
              #
              #   @return [Float]
              required :unit_price, Float

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!method initialize(id:, max_amount:, product_id:, quantity:, unit_price:, custom_fields: nil, description: nil, netsuite_sales_order_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ProfessionalService}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param max_amount [Float] Maximum amount for the term.
              #
              #   @param product_id [String]
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param description [String]
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            end

            class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute access_amount
              #   The amount of commit to grant.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::AccessAmount]
              required :access_amount,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::AccessAmount }

              # @!attribute commit_duration
              #   The amount of time the created commits will be valid for
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::CommitDuration]
              required :commit_duration,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::CommitDuration }

              # @!attribute priority
              #   Will be passed down to the individual commits
              #
              #   @return [Float]
              required :priority, Float

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::Product]
              required :product,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::Product }

              # @!attribute rate_type
              #   Whether the created commits will use the commit rate or list rate
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::RateType }

              # @!attribute starting_at
              #   Determines the start time for the first commit
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute applicable_product_ids
              #   Will be passed down to the individual commits
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #   Will be passed down to the individual commits
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute contract
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::Contract, nil]
              optional :contract,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::Contract }

              # @!attribute description
              #   Will be passed down to the individual commits
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute ending_before
              #   Determines when the contract will stop creating recurring commits. Optional
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute invoice_amount
              #   The amount the customer should be billed for the commit. Not required.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::InvoiceAmount, nil]
              optional :invoice_amount,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::InvoiceAmount }

              # @!attribute name
              #   Displayed on invoices. Will be passed through to the individual commits
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   Will be passed down to the individual commits
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!attribute proration
              #   Determines whether the first and last commit will be prorated. If not provided,
              #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::Proration, nil]
              optional :proration,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::Proration }

              # @!attribute recurrence_frequency
              #   The frequency at which the recurring commits will be created. If not provided: -
              #   The commits will be created on the usage invoice frequency. If provided: - The
              #   period defined in the duration will correspond to this frequency. - Commits will
              #   be created aligned with the recurring commit's start_date rather than the usage
              #   invoice dates.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::RecurrenceFrequency, nil]
              optional :recurrence_frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::RecurrenceFrequency }

              # @!attribute rollover_fraction
              #   Will be passed down to the individual commits. This controls how much of an
              #   individual unexpired commit will roll over upon contract transition. Must be
              #   between 0 and 1.
              #
              #   @return [Float, nil]
              optional :rollover_fraction, Float

              # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, invoice_amount: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param access_amount [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::AccessAmount] The amount of commit to grant.
              #
              #   @param commit_duration [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::CommitDuration] The amount of time the created commits will be valid for
              #
              #   @param priority [Float] Will be passed down to the individual commits
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::Product]
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
              #
              #   @param starting_at [Time] Determines the start time for the first commit
              #
              #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
              #
              #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
              #
              #   @param contract [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::Contract]
              #
              #   @param description [String] Will be passed down to the individual commits
              #
              #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
              #
              #   @param invoice_amount [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit. Not required.
              #
              #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
              #
              #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
              #
              #   @param proration [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
              #
              #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
              #
              #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit#access_amount
              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type_id
                #
                #   @return [String]
                required :credit_type_id, String

                # @!attribute quantity
                #
                #   @return [Float]
                required :quantity, Float

                # @!attribute unit_price
                #
                #   @return [Float]
                required :unit_price, Float

                # @!method initialize(credit_type_id:, quantity:, unit_price:)
                #   The amount of commit to grant.
                #
                #   @param credit_type_id [String]
                #   @param quantity [Float]
                #   @param unit_price [Float]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit#commit_duration
              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute value
                #
                #   @return [Float]
                required :value, Float

                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::CommitDuration::Unit, nil]
                optional :unit,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::CommitDuration::Unit }

                # @!method initialize(value:, unit: nil)
                #   The amount of time the created commits will be valid for
                #
                #   @param value [Float]
                #   @param unit [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::CommitDuration::Unit]

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit::CommitDuration#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  PERIODS = :PERIODS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # Whether the created commits will use the commit rate or list rate
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit#contract
              class Contract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit#invoice_amount
              class InvoiceAmount < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type_id
                #
                #   @return [String]
                required :credit_type_id, String

                # @!attribute quantity
                #
                #   @return [Float]
                required :quantity, Float

                # @!attribute unit_price
                #
                #   @return [Float]
                required :unit_price, Float

                # @!method initialize(credit_type_id:, quantity:, unit_price:)
                #   The amount the customer should be billed for the commit. Not required.
                #
                #   @param credit_type_id [String]
                #   @param quantity [Float]
                #   @param unit_price [Float]
              end

              # Determines whether the first and last commit will be prorated. If not provided,
              # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit#proration
              module Proration
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                FIRST = :FIRST
                LAST = :LAST
                FIRST_AND_LAST = :FIRST_AND_LAST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's start_date rather than the usage
              # invoice dates.
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCommit#recurrence_frequency
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class RecurringCredit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute access_amount
              #   The amount of commit to grant.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::AccessAmount]
              required :access_amount,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::AccessAmount }

              # @!attribute commit_duration
              #   The amount of time the created commits will be valid for
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::CommitDuration]
              required :commit_duration,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::CommitDuration }

              # @!attribute priority
              #   Will be passed down to the individual commits
              #
              #   @return [Float]
              required :priority, Float

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::Product]
              required :product,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::Product }

              # @!attribute rate_type
              #   Whether the created commits will use the commit rate or list rate
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::RateType }

              # @!attribute starting_at
              #   Determines the start time for the first commit
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute applicable_product_ids
              #   Will be passed down to the individual commits
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #   Will be passed down to the individual commits
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute contract
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::Contract, nil]
              optional :contract,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::Contract }

              # @!attribute description
              #   Will be passed down to the individual commits
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute ending_before
              #   Determines when the contract will stop creating recurring commits. Optional
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute name
              #   Displayed on invoices. Will be passed through to the individual commits
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   Will be passed down to the individual commits
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!attribute proration
              #   Determines whether the first and last commit will be prorated. If not provided,
              #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::Proration, nil]
              optional :proration,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::Proration }

              # @!attribute recurrence_frequency
              #   The frequency at which the recurring commits will be created. If not provided: -
              #   The commits will be created on the usage invoice frequency. If provided: - The
              #   period defined in the duration will correspond to this frequency. - Commits will
              #   be created aligned with the recurring commit's start_date rather than the usage
              #   invoice dates.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::RecurrenceFrequency, nil]
              optional :recurrence_frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::RecurrenceFrequency }

              # @!attribute rollover_fraction
              #   Will be passed down to the individual commits. This controls how much of an
              #   individual unexpired commit will roll over upon contract transition. Must be
              #   between 0 and 1.
              #
              #   @return [Float, nil]
              optional :rollover_fraction, Float

              # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param access_amount [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::AccessAmount] The amount of commit to grant.
              #
              #   @param commit_duration [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::CommitDuration] The amount of time the created commits will be valid for
              #
              #   @param priority [Float] Will be passed down to the individual commits
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::Product]
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
              #
              #   @param starting_at [Time] Determines the start time for the first commit
              #
              #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
              #
              #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
              #
              #   @param contract [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::Contract]
              #
              #   @param description [String] Will be passed down to the individual commits
              #
              #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
              #
              #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
              #
              #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
              #
              #   @param proration [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
              #
              #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
              #
              #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit#access_amount
              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type_id
                #
                #   @return [String]
                required :credit_type_id, String

                # @!attribute quantity
                #
                #   @return [Float]
                required :quantity, Float

                # @!attribute unit_price
                #
                #   @return [Float]
                required :unit_price, Float

                # @!method initialize(credit_type_id:, quantity:, unit_price:)
                #   The amount of commit to grant.
                #
                #   @param credit_type_id [String]
                #   @param quantity [Float]
                #   @param unit_price [Float]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit#commit_duration
              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute value
                #
                #   @return [Float]
                required :value, Float

                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::CommitDuration::Unit, nil]
                optional :unit,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::CommitDuration::Unit }

                # @!method initialize(value:, unit: nil)
                #   The amount of time the created commits will be valid for
                #
                #   @param value [Float]
                #   @param unit [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::CommitDuration::Unit]

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit::CommitDuration#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  PERIODS = :PERIODS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # Whether the created commits will use the commit rate or list rate
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit#contract
              class Contract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              # Determines whether the first and last commit will be prorated. If not provided,
              # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit#proration
              module Proration
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                FIRST = :FIRST
                LAST = :LAST
                FIRST_AND_LAST = :FIRST_AND_LAST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's start_date rather than the usage
              # invoice dates.
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::RecurringCredit#recurrence_frequency
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute fraction
              #
              #   @return [Float]
              required :fraction, Float

              # @!attribute netsuite_reseller_id
              #
              #   @return [String]
              required :netsuite_reseller_id, String

              # @!attribute reseller_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ResellerRoyalty::ResellerType]
              required :reseller_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ResellerRoyalty::ResellerType }

              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute applicable_product_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute aws_account_number
              #
              #   @return [String, nil]
              optional :aws_account_number, String

              # @!attribute aws_offer_id
              #
              #   @return [String, nil]
              optional :aws_offer_id, String

              # @!attribute aws_payer_reference_id
              #
              #   @return [String, nil]
              optional :aws_payer_reference_id, String

              # @!attribute ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute gcp_account_id
              #
              #   @return [String, nil]
              optional :gcp_account_id, String

              # @!attribute gcp_offer_id
              #
              #   @return [String, nil]
              optional :gcp_offer_id, String

              # @!attribute reseller_contract_value
              #
              #   @return [Float, nil]
              optional :reseller_contract_value, Float

              # @!method initialize(fraction:, netsuite_reseller_id:, reseller_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil, ending_before: nil, gcp_account_id: nil, gcp_offer_id: nil, reseller_contract_value: nil)
              #   @param fraction [Float]
              #   @param netsuite_reseller_id [String]
              #   @param reseller_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ResellerRoyalty::ResellerType]
              #   @param starting_at [Time]
              #   @param applicable_product_ids [Array<String>]
              #   @param applicable_product_tags [Array<String>]
              #   @param aws_account_number [String]
              #   @param aws_offer_id [String]
              #   @param aws_payer_reference_id [String]
              #   @param ending_before [Time]
              #   @param gcp_account_id [String]
              #   @param gcp_offer_id [String]
              #   @param reseller_contract_value [Float]

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::ResellerRoyalty#reseller_type
              module ResellerType
                extend MetronomeSDK::Internal::Type::Enum

                AWS = :AWS
                AWS_PRO_SERVICE = :AWS_PRO_SERVICE
                GCP = :GCP
                GCP_PRO_SERVICE = :GCP_PRO_SERVICE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # Determines which scheduled and commit charges to consolidate onto the Contract's
            # usage invoice. The charge's `timestamp` must match the usage invoice's
            # `ending_before` date for consolidation to occur. This field cannot be modified
            # after a Contract has been created. If this field is omitted, charges will appear
            # on a separate invoice from usage charges.
            #
            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current#scheduled_charges_on_usage_invoices
            module ScheduledChargesOnUsageInvoices
              extend MetronomeSDK::Internal::Type::Enum

              ALL = :ALL

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current#spend_threshold_configuration
            class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute commit
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::Commit]
              required :commit,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::Commit }

              # @!attribute is_enabled
              #   When set to false, the contract will not be evaluated against the
              #   threshold_amount. Toggling to true will result an immediate evaluation,
              #   regardless of prior state.
              #
              #   @return [Boolean]
              required :is_enabled, MetronomeSDK::Internal::Type::Boolean

              # @!attribute payment_gate_config
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig]
              required :payment_gate_config,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig }

              # @!attribute threshold_amount
              #   Specify the threshold amount for the contract. Each time the contract's usage
              #   hits this amount, a threshold charge will be initiated.
              #
              #   @return [Float]
              required :threshold_amount, Float

              # @!method initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration}
              #   for more details.
              #
              #   @param commit [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::Commit]
              #
              #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
              #
              #   @param payment_gate_config [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig]
              #
              #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration#commit
              class Commit < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute product_id
                #   The commit product that will be used to generate the line item for commit
                #   payment.
                #
                #   @return [String]
                required :product_id, String

                # @!attribute description
                #
                #   @return [String, nil]
                optional :description, String

                # @!attribute name
                #   Specify the name of the line item for the threshold charge. If left blank, it
                #   will default to the commit product name.
                #
                #   @return [String, nil]
                optional :name, String

                # @!method initialize(product_id:, description: nil, name: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::Commit}
                #   for more details.
                #
                #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
                #
                #   @param description [String]
                #
                #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration#payment_gate_config
              class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute payment_gate_type
                #   Gate access to the commit balance based on successful collection of payment.
                #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                #   facilitate payment using your own payment integration. Select NONE if you do not
                #   wish to payment gate the commit balance.
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
                required :payment_gate_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType }

                # @!attribute stripe_config
                #   Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
                optional :stripe_config,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig }

                # @!attribute tax_type
                #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
                #   will default to NONE.
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
                optional :tax_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::TaxType }

                # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig}
                #   for more details.
                #
                #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
                #
                #   @param stripe_config [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

                # Gate access to the commit balance based on successful collection of payment.
                # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                # facilitate payment using your own payment integration. Select NONE if you do not
                # wish to payment gate the commit balance.
                #
                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig#payment_gate_type
                module PaymentGateType
                  extend MetronomeSDK::Internal::Type::Enum

                  NONE = :NONE
                  STRIPE = :STRIPE
                  EXTERNAL = :EXTERNAL

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig#stripe_config
                class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute payment_type
                  #   If left blank, will default to INVOICE
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                  required :payment_type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

                  # @!method initialize(payment_type:)
                  #   Only applicable if using Stripe as your payment gateway through Metronome.
                  #
                  #   @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

                  # If left blank, will default to INVOICE
                  #
                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
                  module PaymentType
                    extend MetronomeSDK::Internal::Type::Enum

                    INVOICE = :INVOICE
                    PAYMENT_INTENT = :PAYMENT_INTENT

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                # not wish Metronome to calculate tax on your behalf. Leaving this field blank
                # will default to NONE.
                #
                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::SpendThresholdConfiguration::PaymentGateConfig#tax_type
                module TaxType
                  extend MetronomeSDK::Internal::Type::Enum

                  NONE = :NONE
                  STRIPE = :STRIPE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current#usage_filter
            class UsageFilter < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute current
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter::Current, nil]
              required :current,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter::Current },
                       nil?: true

              # @!attribute initial
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter::Initial]
              required :initial,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter::Initial }

              # @!attribute updates
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter::Update>]
              required :updates,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter::Update] }

              # @!method initialize(current:, initial:, updates:)
              #   @param current [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter::Current, nil]
              #   @param initial [MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter::Initial]
              #   @param updates [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter::Update>]

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter#current
              class Current < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute group_key
                #
                #   @return [String]
                required :group_key, String

                # @!attribute group_values
                #
                #   @return [Array<String>]
                required :group_values, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute starting_at
                #
                #   @return [Time, nil]
                optional :starting_at, Time

                # @!method initialize(group_key:, group_values:, starting_at: nil)
                #   @param group_key [String]
                #   @param group_values [Array<String>]
                #   @param starting_at [Time]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Current::UsageFilter#initial
              class Initial < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute group_key
                #
                #   @return [String]
                required :group_key, String

                # @!attribute group_values
                #
                #   @return [Array<String>]
                required :group_values, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute starting_at
                #
                #   @return [Time, nil]
                optional :starting_at, Time

                # @!method initialize(group_key:, group_values:, starting_at: nil)
                #   @param group_key [String]
                #   @param group_values [Array<String>]
                #   @param starting_at [Time]
              end

              class Update < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute group_key
                #
                #   @return [String]
                required :group_key, String

                # @!attribute group_values
                #
                #   @return [Array<String>]
                required :group_values, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute starting_at
                #
                #   @return [Time]
                required :starting_at, Time

                # @!method initialize(group_key:, group_values:, starting_at:)
                #   @param group_key [String]
                #   @param group_values [Array<String>]
                #   @param starting_at [Time]
              end
            end
          end

          # @see MetronomeSDK::Models::V1::ContractListResponse::Data#initial
          class Initial < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute commits
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit>]
            required :commits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit] }

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute created_by
            #
            #   @return [String]
            required :created_by, String

            # @!attribute overrides
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override>]
            required :overrides,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override] }

            # @!attribute scheduled_charges
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge>]
            required :scheduled_charges,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge] }

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute transitions
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Transition>]
            required :transitions,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Transition] }

            # @!attribute usage_statement_schedule
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageStatementSchedule]
            required :usage_statement_schedule,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageStatementSchedule }

            # @!attribute credits
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit>, nil]
            optional :credits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit] }

            # @!attribute discounts
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount>, nil]
            optional :discounts,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount] }

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute net_payment_terms_days
            #
            #   @return [Float, nil]
            optional :net_payment_terms_days, Float

            # @!attribute netsuite_sales_order_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!attribute prepaid_balance_threshold_configuration
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration, nil]
            optional :prepaid_balance_threshold_configuration,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration }

            # @!attribute professional_services
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ProfessionalService>, nil]
            optional :professional_services,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ProfessionalService] }

            # @!attribute rate_card_id
            #
            #   @return [String, nil]
            optional :rate_card_id, String

            # @!attribute recurring_commits
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit>, nil]
            optional :recurring_commits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit] }

            # @!attribute recurring_credits
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit>, nil]
            optional :recurring_credits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit] }

            # @!attribute reseller_royalties
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ResellerRoyalty>, nil]
            optional :reseller_royalties,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ResellerRoyalty] }

            # @!attribute salesforce_opportunity_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :salesforce_opportunity_id, String

            # @!attribute scheduled_charges_on_usage_invoices
            #   Determines which scheduled and commit charges to consolidate onto the Contract's
            #   usage invoice. The charge's `timestamp` must match the usage invoice's
            #   `ending_before` date for consolidation to occur. This field cannot be modified
            #   after a Contract has been created. If this field is omitted, charges will appear
            #   on a separate invoice from usage charges.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledChargesOnUsageInvoices, nil]
            optional :scheduled_charges_on_usage_invoices,
                     enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledChargesOnUsageInvoices }

            # @!attribute spend_threshold_configuration
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration, nil]
            optional :spend_threshold_configuration,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration }

            # @!attribute total_contract_value
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Float, nil]
            optional :total_contract_value, Float

            # @!attribute usage_filter
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter, nil]
            optional :usage_filter, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter }

            # @!method initialize(commits:, created_at:, created_by:, overrides:, scheduled_charges:, starting_at:, transitions:, usage_statement_schedule:, credits: nil, discounts: nil, ending_before: nil, name: nil, net_payment_terms_days: nil, netsuite_sales_order_id: nil, prepaid_balance_threshold_configuration: nil, professional_services: nil, rate_card_id: nil, recurring_commits: nil, recurring_credits: nil, reseller_royalties: nil, salesforce_opportunity_id: nil, scheduled_charges_on_usage_invoices: nil, spend_threshold_configuration: nil, total_contract_value: nil, usage_filter: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial} for more
            #   details.
            #
            #   @param commits [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit>]
            #
            #   @param created_at [Time]
            #
            #   @param created_by [String]
            #
            #   @param overrides [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override>]
            #
            #   @param scheduled_charges [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge>]
            #
            #   @param starting_at [Time]
            #
            #   @param transitions [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Transition>]
            #
            #   @param usage_statement_schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageStatementSchedule]
            #
            #   @param credits [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit>]
            #
            #   @param discounts [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount>] This field's availability is dependent on your client's configuration.
            #
            #   @param ending_before [Time]
            #
            #   @param name [String]
            #
            #   @param net_payment_terms_days [Float]
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param prepaid_balance_threshold_configuration [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration]
            #
            #   @param professional_services [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ProfessionalService>] This field's availability is dependent on your client's configuration.
            #
            #   @param rate_card_id [String]
            #
            #   @param recurring_commits [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit>]
            #
            #   @param recurring_credits [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit>]
            #
            #   @param reseller_royalties [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ResellerRoyalty>] This field's availability is dependent on your client's configuration.
            #
            #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledChargesOnUsageInvoices] Determines which scheduled and commit charges to consolidate onto the Contract's
            #
            #   @param spend_threshold_configuration [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration]
            #
            #   @param total_contract_value [Float] This field's availability is dependent on your client's configuration.
            #
            #   @param usage_filter [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter]

            class Commit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Product]
              required :product, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Product }

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Type]
              required :type, enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Type }

              # @!attribute access_schedule
              #   The schedule that the customer will gain access to the credits purposed with
              #   this commit.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::AccessSchedule, nil]
              optional :access_schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::AccessSchedule }

              # @!attribute amount
              #   (DEPRECATED) Use access_schedule + invoice_schedule instead.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!attribute applicable_contract_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute archived_at
              #   RFC 3339 timestamp indicating when the commit was archived. If not provided, the
              #   commit is not archived.
              #
              #   @return [Time, nil]
              optional :archived_at, Time

              # @!attribute balance
              #   The current balance of the credit or commit. This balance reflects the amount of
              #   credit or commit that the customer has access to use at this moment - thus,
              #   expired and upcoming credit or commit segments contribute 0 to the balance. The
              #   balance will match the sum of all ledger entries with the exception of the case
              #   where the sum of negative manual ledger entries exceeds the positive amount
              #   remaining on the credit or commit - in that case, the balance will be 0. All
              #   manual ledger entries associated with active credit or commit segments are
              #   included in the balance, including future-dated manual ledger entries.
              #
              #   @return [Float, nil]
              optional :balance, Float

              # @!attribute contract
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Contract, nil]
              optional :contract, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Contract }

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute invoice_contract
              #   The contract that this commit will be billed on.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::InvoiceContract, nil]
              optional :invoice_contract,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::InvoiceContract }

              # @!attribute invoice_schedule
              #   The schedule that the customer will be invoiced for this commit.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::InvoiceSchedule, nil]
              optional :invoice_schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::InvoiceSchedule }

              # @!attribute ledger
              #   A list of ordered events that impact the balance of a commit. For example, an
              #   invoice deduction or a rollover.
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember5, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember6, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember7, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember8, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember9, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember10, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember11, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember12>, nil]
              optional :ledger,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger] }

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!attribute priority
              #   If multiple credits or commits are applicable, the one with the lower priority
              #   will apply first.
              #
              #   @return [Float, nil]
              optional :priority, Float

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::RateType }

              # @!attribute rolled_over_from
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::RolledOverFrom, nil]
              optional :rolled_over_from,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::RolledOverFrom }

              # @!attribute rollover_fraction
              #
              #   @return [Float, nil]
              optional :rollover_fraction, Float

              # @!attribute salesforce_opportunity_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :salesforce_opportunity_id, String

              # @!attribute uniqueness_key
              #   Prevents the creation of duplicates. If a request to create a commit or credit
              #   is made with a uniqueness key that was previously used to create a commit or
              #   credit, a new record will not be created and the request will fail with a 409
              #   error.
              #
              #   @return [String, nil]
              optional :uniqueness_key, String

              # @!method initialize(id:, product:, type:, access_schedule: nil, amount: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, archived_at: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, invoice_contract: nil, invoice_schedule: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, rolled_over_from: nil, rollover_fraction: nil, salesforce_opportunity_id: nil, uniqueness_key: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit} for more
              #   details.
              #
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Product]
              #
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Type]
              #
              #   @param access_schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::AccessSchedule] The schedule that the customer will gain access to the credits purposed with thi
              #
              #   @param amount [Float] (DEPRECATED) Use access_schedule + invoice_schedule instead.
              #
              #   @param applicable_contract_ids [Array<String>]
              #
              #   @param applicable_product_ids [Array<String>]
              #
              #   @param applicable_product_tags [Array<String>]
              #
              #   @param archived_at [Time] RFC 3339 timestamp indicating when the commit was archived. If not provided, the
              #
              #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
              #
              #   @param contract [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Contract]
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param description [String]
              #
              #   @param invoice_contract [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::InvoiceContract] The contract that this commit will be billed on.
              #
              #   @param invoice_schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::InvoiceSchedule] The schedule that the customer will be invoiced for this commit.
              #
              #   @param ledger [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember5, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember6, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember7, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember8, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember9, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember10, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember11, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember12>] A list of ordered events that impact the balance of a commit. For example, an in
              #
              #   @param name [String]
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::RateType]
              #
              #   @param rolled_over_from [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::RolledOverFrom]
              #
              #   @param rollover_fraction [Float]
              #
              #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID = :PREPAID
                POSTPAID = :POSTPAID

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit#access_schedule
              class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::AccessSchedule::ScheduleItem>]
                required :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::AccessSchedule::ScheduleItem] }

                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::AccessSchedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::AccessSchedule::CreditType }

                # @!method initialize(schedule_items:, credit_type: nil)
                #   The schedule that the customer will gain access to the credits purposed with
                #   this commit.
                #
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::AccessSchedule::ScheduleItem>]
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::AccessSchedule::CreditType]

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute ending_before
                  #
                  #   @return [Time]
                  required :ending_before, Time

                  # @!attribute starting_at
                  #
                  #   @return [Time]
                  required :starting_at, Time

                  # @!method initialize(id:, amount:, ending_before:, starting_at:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param ending_before [Time]
                  #   @param starting_at [Time]
                end

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::AccessSchedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit#contract
              class Contract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit#invoice_contract
              class InvoiceContract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   The contract that this commit will be billed on.
                #
                #   @param id [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit#invoice_schedule
              class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::InvoiceSchedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::InvoiceSchedule::CreditType }

                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::InvoiceSchedule::ScheduleItem>, nil]
                optional :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::InvoiceSchedule::ScheduleItem] }

                # @!method initialize(credit_type: nil, schedule_items: nil)
                #   The schedule that the customer will be invoiced for this commit.
                #
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::InvoiceSchedule::CreditType]
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::InvoiceSchedule::ScheduleItem>]

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::InvoiceSchedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute quantity
                  #
                  #   @return [Float]
                  required :quantity, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute unit_price
                  #
                  #   @return [Float]
                  required :unit_price, Float

                  # @!method initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param quantity [Float]
                  #   @param timestamp [Time]
                  #   @param unit_price [Float]
                end
              end

              module Ledger
                extend MetronomeSDK::Internal::Type::Union

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember0 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember1 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember2 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember3 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember4 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember5 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember6 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember7 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember8 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember9 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember10 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember11 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember12 }

                class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember0::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember0::Type }

                  # @!method initialize(amount:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember0::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember0#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember1::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember1::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember1::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember1#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute new_contract_id
                  #
                  #   @return [String]
                  required :new_contract_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember2::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember2::Type }

                  # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param new_contract_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember2::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember2#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember3::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember3::Type }

                  # @!method initialize(amount:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember3::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember3#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember4::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember4::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember4::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember4#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember5::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember5::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember5::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember5#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember6 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember6::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember6::Type }

                  # @!method initialize(amount:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember6::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember6#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember7 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember7::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember7::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember7::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember7#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember8 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute new_contract_id
                  #
                  #   @return [String]
                  required :new_contract_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember8::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember8::Type }

                  # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param new_contract_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember8::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember8#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember9 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember9::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember9::Type }

                  # @!method initialize(amount:, invoice_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember9::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember9#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember10 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute reason
                  #
                  #   @return [String]
                  required :reason, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember10::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember10::Type }

                  # @!method initialize(amount:, reason:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param reason [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember10::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember10#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember11 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute reason
                  #
                  #   @return [String]
                  required :reason, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember11::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember11::Type }

                  # @!method initialize(amount:, reason:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param reason [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember11::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember11#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember12 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember12::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember12::Type }

                  # @!method initialize(amount:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember12::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember12#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember5, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember6, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember7, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember8, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember9, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember10, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember11, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember12)]

                define_sorbet_constant!(:Variants) do
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember0,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember1,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember2,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember3,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember4,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember5,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember6,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember7,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember8,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember9,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember10,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember11,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit::Ledger::UnionMember12
                    )
                  end
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Commit#rolled_over_from
              class RolledOverFrom < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute commit_id
                #
                #   @return [String]
                required :commit_id, String

                # @!attribute contract_id
                #
                #   @return [String]
                required :contract_id, String

                # @!method initialize(commit_id:, contract_id:)
                #   @param commit_id [String]
                #   @param contract_id [String]
              end
            end

            class Override < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute applicable_product_tags
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute credit_type
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::CreditType, nil]
              optional :credit_type,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::CreditType }

              # @!attribute ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute entitled
              #
              #   @return [Boolean, nil]
              optional :entitled, MetronomeSDK::Internal::Type::Boolean

              # @!attribute is_commit_specific
              #
              #   @return [Boolean, nil]
              optional :is_commit_specific, MetronomeSDK::Internal::Type::Boolean

              # @!attribute is_prorated
              #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #   set to true.
              #
              #   @return [Boolean, nil]
              optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

              # @!attribute multiplier
              #
              #   @return [Float, nil]
              optional :multiplier, Float

              # @!attribute override_specifiers
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverrideSpecifier>, nil]
              optional :override_specifiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverrideSpecifier] }

              # @!attribute override_tiers
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverrideTier>, nil]
              optional :override_tiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverrideTier] }

              # @!attribute overwrite_rate
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate, nil]
              optional :overwrite_rate,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate }

              # @!attribute price
              #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
              #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!attribute priority
              #
              #   @return [Float, nil]
              optional :priority, Float

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::Product, nil]
              optional :product, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::Product }

              # @!attribute quantity
              #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::RateType }

              # @!attribute target
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::Target, nil]
              optional :target,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::Target }

              # @!attribute tiers
              #   Only set for TIERED rate_type.
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::Tier>, nil]
              optional :tiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::Tier] }

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::Type, nil]
              optional :type, enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::Type }

              # @!attribute value
              #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
              #   processors.
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :value, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

              # @!method initialize(id:, starting_at:, applicable_product_tags: nil, credit_type: nil, ending_before: nil, entitled: nil, is_commit_specific: nil, is_prorated: nil, multiplier: nil, override_specifiers: nil, override_tiers: nil, overwrite_rate: nil, price: nil, priority: nil, product: nil, quantity: nil, rate_type: nil, target: nil, tiers: nil, type: nil, value: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override} for
              #   more details.
              #
              #   @param id [String]
              #
              #   @param starting_at [Time]
              #
              #   @param applicable_product_tags [Array<String>]
              #
              #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::CreditType]
              #
              #   @param ending_before [Time]
              #
              #   @param entitled [Boolean]
              #
              #   @param is_commit_specific [Boolean]
              #
              #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #
              #   @param multiplier [Float]
              #
              #   @param override_specifiers [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverrideSpecifier>]
              #
              #   @param override_tiers [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverrideTier>]
              #
              #   @param overwrite_rate [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate]
              #
              #   @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, t
              #
              #   @param priority [Float]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::Product]
              #
              #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::RateType]
              #
              #   @param target [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::Target]
              #
              #   @param tiers [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::Tier>] Only set for TIERED rate_type.
              #
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::Type]
              #
              #   @param value [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override#credit_type
              class CreditType < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute commit_ids
                #
                #   @return [Array<String>, nil]
                optional :commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute presentation_group_values
                #
                #   @return [Hash{Symbol=>String, nil}, nil]
                optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String, nil?: true]

                # @!attribute pricing_group_values
                #
                #   @return [Hash{Symbol=>String}, nil]
                optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

                # @!attribute product_id
                #
                #   @return [String, nil]
                optional :product_id, String

                # @!attribute product_tags
                #
                #   @return [Array<String>, nil]
                optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute recurring_commit_ids
                #
                #   @return [Array<String>, nil]
                optional :recurring_commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute recurring_credit_ids
                #
                #   @return [Array<String>, nil]
                optional :recurring_credit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!method initialize(commit_ids: nil, presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, recurring_commit_ids: nil, recurring_credit_ids: nil)
                #   @param commit_ids [Array<String>]
                #   @param presentation_group_values [Hash{Symbol=>String, nil}]
                #   @param pricing_group_values [Hash{Symbol=>String}]
                #   @param product_id [String]
                #   @param product_tags [Array<String>]
                #   @param recurring_commit_ids [Array<String>]
                #   @param recurring_credit_ids [Array<String>]
              end

              class OverrideTier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute multiplier
                #
                #   @return [Float]
                required :multiplier, Float

                # @!attribute size
                #
                #   @return [Float, nil]
                optional :size, Float

                # @!method initialize(multiplier:, size: nil)
                #   @param multiplier [Float]
                #   @param size [Float]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override#overwrite_rate
              class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute rate_type
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate::RateType]
                required :rate_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate::RateType }

                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate::CreditType }

                # @!attribute custom_rate
                #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
                #   processors.
                #
                #   @return [Hash{Symbol=>Object}, nil]
                optional :custom_rate,
                         MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

                # @!attribute is_prorated
                #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
                #   set to true.
                #
                #   @return [Boolean, nil]
                optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

                # @!attribute price
                #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
                #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
                #
                #   @return [Float, nil]
                optional :price, Float

                # @!attribute quantity
                #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!attribute tiers
                #   Only set for TIERED rate_type.
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate::Tier>, nil]
                optional :tiers,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate::Tier] }

                # @!method initialize(rate_type:, credit_type: nil, custom_rate: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate}
                #   for more details.
                #
                #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate::RateType]
                #
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate::CreditType]
                #
                #   @param custom_rate [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo
                #
                #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
                #
                #   @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, t
                #
                #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
                #
                #   @param tiers [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate::Tier>] Only set for TIERED rate_type.

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate#rate_type
                module RateType
                  extend MetronomeSDK::Internal::Type::Enum

                  FLAT = :FLAT
                  PERCENTAGE = :PERCENTAGE
                  SUBSCRIPTION = :SUBSCRIPTION
                  TIERED = :TIERED
                  CUSTOM = :CUSTOM

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override::OverwriteRate#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end

                class Tier < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute price
                  #
                  #   @return [Float]
                  required :price, Float

                  # @!attribute size
                  #
                  #   @return [Float, nil]
                  optional :size, Float

                  # @!method initialize(price:, size: nil)
                  #   @param price [Float]
                  #   @param size [Float]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                FLAT = :FLAT
                PERCENTAGE = :PERCENTAGE
                SUBSCRIPTION = :SUBSCRIPTION
                TIERED = :TIERED
                CUSTOM = :CUSTOM

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override#target
              module Target
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              class Tier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute price
                #
                #   @return [Float]
                required :price, Float

                # @!attribute size
                #
                #   @return [Float, nil]
                optional :size, Float

                # @!method initialize(price:, size: nil)
                #   @param price [Float]
                #   @param size [Float]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Override#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                OVERWRITE = :OVERWRITE
                MULTIPLIER = :MULTIPLIER
                TIERED = :TIERED

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge::Product]
              required :product,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge::Product }

              # @!attribute schedule
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge::Schedule]
              required :schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge::Schedule }

              # @!attribute archived_at
              #
              #   @return [Time, nil]
              optional :archived_at, Time

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute name
              #   displayed on invoices
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!method initialize(id:, product:, schedule:, archived_at: nil, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge::Product]
              #
              #   @param schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge::Schedule]
              #
              #   @param archived_at [Time]
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param name [String] displayed on invoices
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge#schedule
              class Schedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge::Schedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge::Schedule::CreditType }

                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge::Schedule::ScheduleItem>, nil]
                optional :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge::Schedule::ScheduleItem] }

                # @!method initialize(credit_type: nil, schedule_items: nil)
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge::Schedule::CreditType]
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge::Schedule::ScheduleItem>]

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ScheduledCharge::Schedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute quantity
                  #
                  #   @return [Float]
                  required :quantity, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute unit_price
                  #
                  #   @return [Float]
                  required :unit_price, Float

                  # @!method initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param quantity [Float]
                  #   @param timestamp [Time]
                  #   @param unit_price [Float]
                end
              end
            end

            class Transition < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute from_contract_id
              #
              #   @return [String]
              required :from_contract_id, String

              # @!attribute to_contract_id
              #
              #   @return [String]
              required :to_contract_id, String

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Transition::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Transition::Type }

              # @!method initialize(from_contract_id:, to_contract_id:, type:)
              #   @param from_contract_id [String]
              #   @param to_contract_id [String]
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Transition::Type]

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Transition#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                SUPERSEDE = :SUPERSEDE
                RENEWAL = :RENEWAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial#usage_statement_schedule
            class UsageStatementSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute billing_anchor_date
              #   Contract usage statements follow a selected cadence based on this date.
              #
              #   @return [Time]
              required :billing_anchor_date, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageStatementSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageStatementSchedule::Frequency }

              # @!method initialize(billing_anchor_date:, frequency:)
              #   @param billing_anchor_date [Time] Contract usage statements follow a selected cadence based on this date.
              #
              #   @param frequency [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageStatementSchedule::Frequency]

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageStatementSchedule#frequency
              module Frequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Credit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Product]
              required :product, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Product }

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Type]
              required :type, enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Type }

              # @!attribute access_schedule
              #   The schedule that the customer will gain access to the credits.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::AccessSchedule, nil]
              optional :access_schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::AccessSchedule }

              # @!attribute applicable_contract_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute balance
              #   The current balance of the credit or commit. This balance reflects the amount of
              #   credit or commit that the customer has access to use at this moment - thus,
              #   expired and upcoming credit or commit segments contribute 0 to the balance. The
              #   balance will match the sum of all ledger entries with the exception of the case
              #   where the sum of negative manual ledger entries exceeds the positive amount
              #   remaining on the credit or commit - in that case, the balance will be 0. All
              #   manual ledger entries associated with active credit or commit segments are
              #   included in the balance, including future-dated manual ledger entries.
              #
              #   @return [Float, nil]
              optional :balance, Float

              # @!attribute contract
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Contract, nil]
              optional :contract, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Contract }

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute ledger
              #   A list of ordered events that impact the balance of a credit. For example, an
              #   invoice deduction or an expiration.
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember5>, nil]
              optional :ledger,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger] }

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!attribute priority
              #   If multiple credits or commits are applicable, the one with the lower priority
              #   will apply first.
              #
              #   @return [Float, nil]
              optional :priority, Float

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::RateType }

              # @!attribute salesforce_opportunity_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :salesforce_opportunity_id, String

              # @!attribute uniqueness_key
              #   Prevents the creation of duplicates. If a request to create a commit or credit
              #   is made with a uniqueness key that was previously used to create a commit or
              #   credit, a new record will not be created and the request will fail with a 409
              #   error.
              #
              #   @return [String, nil]
              optional :uniqueness_key, String

              # @!method initialize(id:, product:, type:, access_schedule: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, salesforce_opportunity_id: nil, uniqueness_key: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit} for more
              #   details.
              #
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Product]
              #
              #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Type]
              #
              #   @param access_schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::AccessSchedule] The schedule that the customer will gain access to the credits.
              #
              #   @param applicable_contract_ids [Array<String>]
              #
              #   @param applicable_product_ids [Array<String>]
              #
              #   @param applicable_product_tags [Array<String>]
              #
              #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
              #
              #   @param contract [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Contract]
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param description [String]
              #
              #   @param ledger [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember5>] A list of ordered events that impact the balance of a credit. For example, an in
              #
              #   @param name [String]
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::RateType]
              #
              #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                CREDIT = :CREDIT

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit#access_schedule
              class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::AccessSchedule::ScheduleItem>]
                required :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::AccessSchedule::ScheduleItem] }

                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::AccessSchedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::AccessSchedule::CreditType }

                # @!method initialize(schedule_items:, credit_type: nil)
                #   The schedule that the customer will gain access to the credits.
                #
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::AccessSchedule::ScheduleItem>]
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::AccessSchedule::CreditType]

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute ending_before
                  #
                  #   @return [Time]
                  required :ending_before, Time

                  # @!attribute starting_at
                  #
                  #   @return [Time]
                  required :starting_at, Time

                  # @!method initialize(id:, amount:, ending_before:, starting_at:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param ending_before [Time]
                  #   @param starting_at [Time]
                end

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::AccessSchedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit#contract
              class Contract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              module Ledger
                extend MetronomeSDK::Internal::Type::Union

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember0 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember1 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember2 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember3 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember4 }

                variant -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember5 }

                class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember0::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember0::Type }

                  # @!method initialize(amount:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember0::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember0#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_SEGMENT_START = :CREDIT_SEGMENT_START

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember1::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember1::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember1::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember1#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_AUTOMATED_INVOICE_DEDUCTION = :CREDIT_AUTOMATED_INVOICE_DEDUCTION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember2::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember2::Type }

                  # @!method initialize(amount:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember2::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember2#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_EXPIRATION = :CREDIT_EXPIRATION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember3::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember3::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember3::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember3#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_CANCELED = :CREDIT_CANCELED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute segment_id
                  #
                  #   @return [String]
                  required :segment_id, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember4::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember4::Type }

                  # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param segment_id [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember4::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember4#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_CREDITED = :CREDIT_CREDITED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute reason
                  #
                  #   @return [String]
                  required :reason, String

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute type
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember5::Type]
                  required :type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember5::Type }

                  # @!method initialize(amount:, reason:, timestamp:, type:)
                  #   @param amount [Float]
                  #   @param reason [String]
                  #   @param timestamp [Time]
                  #   @param type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember5::Type]

                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember5#type
                  module Type
                    extend MetronomeSDK::Internal::Type::Enum

                    CREDIT_MANUAL = :CREDIT_MANUAL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember0, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember1, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember2, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember3, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember4, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember5)]

                define_sorbet_constant!(:Variants) do
                  T.type_alias do
                    T.any(
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember0,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember1,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember2,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember3,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember4,
                      MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit::Ledger::UnionMember5
                    )
                  end
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Credit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Discount < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount::Product]
              required :product, -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount::Product }

              # @!attribute schedule
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount::Schedule]
              required :schedule,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount::Schedule }

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!method initialize(id:, product:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount::Product]
              #
              #   @param schedule [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount::Schedule]
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param name [String]
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount#schedule
              class Schedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount::Schedule::CreditType, nil]
                optional :credit_type,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount::Schedule::CreditType }

                # @!attribute schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount::Schedule::ScheduleItem>, nil]
                optional :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount::Schedule::ScheduleItem] }

                # @!method initialize(credit_type: nil, schedule_items: nil)
                #   @param credit_type [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount::Schedule::CreditType]
                #   @param schedule_items [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount::Schedule::ScheduleItem>]

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::Discount::Schedule#credit_type
                class CreditType < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!method initialize(id:, name:)
                  #   @param id [String]
                  #   @param name [String]
                end

                class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute id
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute invoice_id
                  #
                  #   @return [String]
                  required :invoice_id, String

                  # @!attribute quantity
                  #
                  #   @return [Float]
                  required :quantity, Float

                  # @!attribute timestamp
                  #
                  #   @return [Time]
                  required :timestamp, Time

                  # @!attribute unit_price
                  #
                  #   @return [Float]
                  required :unit_price, Float

                  # @!method initialize(id:, amount:, invoice_id:, quantity:, timestamp:, unit_price:)
                  #   @param id [String]
                  #   @param amount [Float]
                  #   @param invoice_id [String]
                  #   @param quantity [Float]
                  #   @param timestamp [Time]
                  #   @param unit_price [Float]
                end
              end
            end

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial#prepaid_balance_threshold_configuration
            class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute commit
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::Commit]
              required :commit,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::Commit }

              # @!attribute is_enabled
              #   When set to false, the contract will not be evaluated against the
              #   threshold_amount. Toggling to true will result an immediate evaluation,
              #   regardless of prior state.
              #
              #   @return [Boolean]
              required :is_enabled, MetronomeSDK::Internal::Type::Boolean

              # @!attribute payment_gate_config
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
              required :payment_gate_config,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig }

              # @!attribute recharge_to_amount
              #   Specify the amount the balance should be recharged to.
              #
              #   @return [Float]
              required :recharge_to_amount, Float

              # @!attribute threshold_amount
              #   Specify the threshold amount for the contract. Each time the contract's prepaid
              #   balance lowers to this amount, a threshold charge will be initiated.
              #
              #   @return [Float]
              required :threshold_amount, Float

              # @!method initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration}
              #   for more details.
              #
              #   @param commit [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::Commit]
              #
              #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
              #
              #   @param payment_gate_config [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
              #
              #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
              #
              #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's prepaid

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration#commit
              class Commit < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute product_id
                #   The commit product that will be used to generate the line item for commit
                #   payment.
                #
                #   @return [String]
                required :product_id, String

                # @!attribute applicable_product_ids
                #   Which products the threshold commit applies to. If both applicable_product_ids
                #   and applicable_product_tags are not provided, the commit applies to all
                #   products.
                #
                #   @return [Array<String>, nil]
                optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute applicable_product_tags
                #   Which tags the threshold commit applies to. If both applicable_product_ids and
                #   applicable_product_tags are not provided, the commit applies to all products.
                #
                #   @return [Array<String>, nil]
                optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute description
                #
                #   @return [String, nil]
                optional :description, String

                # @!attribute name
                #   Specify the name of the line item for the threshold charge. If left blank, it
                #   will default to the commit product name.
                #
                #   @return [String, nil]
                optional :name, String

                # @!method initialize(product_id:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, name: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::Commit}
                #   for more details.
                #
                #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
                #
                #   @param applicable_product_ids [Array<String>] Which products the threshold commit applies to. If both applicable_product_ids a
                #
                #   @param applicable_product_tags [Array<String>] Which tags the threshold commit applies to. If both applicable_product_ids and a
                #
                #   @param description [String]
                #
                #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration#payment_gate_config
              class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute payment_gate_type
                #   Gate access to the commit balance based on successful collection of payment.
                #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                #   facilitate payment using your own payment integration. Select NONE if you do not
                #   wish to payment gate the commit balance.
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
                required :payment_gate_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType }

                # @!attribute stripe_config
                #   Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
                optional :stripe_config,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig }

                # @!attribute tax_type
                #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
                #   will default to NONE.
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType, nil]
                optional :tax_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType }

                # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig}
                #   for more details.
                #
                #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
                #
                #   @param stripe_config [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

                # Gate access to the commit balance based on successful collection of payment.
                # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                # facilitate payment using your own payment integration. Select NONE if you do not
                # wish to payment gate the commit balance.
                #
                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#payment_gate_type
                module PaymentGateType
                  extend MetronomeSDK::Internal::Type::Enum

                  NONE = :NONE
                  STRIPE = :STRIPE
                  EXTERNAL = :EXTERNAL

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#stripe_config
                class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute payment_type
                  #   If left blank, will default to INVOICE
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                  required :payment_type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

                  # @!method initialize(payment_type:)
                  #   Only applicable if using Stripe as your payment gateway through Metronome.
                  #
                  #   @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

                  # If left blank, will default to INVOICE
                  #
                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
                  module PaymentType
                    extend MetronomeSDK::Internal::Type::Enum

                    INVOICE = :INVOICE
                    PAYMENT_INTENT = :PAYMENT_INTENT

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                # not wish Metronome to calculate tax on your behalf. Leaving this field blank
                # will default to NONE.
                #
                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#tax_type
                module TaxType
                  extend MetronomeSDK::Internal::Type::Enum

                  NONE = :NONE
                  STRIPE = :STRIPE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end

            class ProfessionalService < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute max_amount
              #   Maximum amount for the term.
              #
              #   @return [Float]
              required :max_amount, Float

              # @!attribute product_id
              #
              #   @return [String]
              required :product_id, String

              # @!attribute quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #   amount.
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #   amount and must be specified.
              #
              #   @return [Float]
              required :unit_price, Float

              # @!attribute custom_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute netsuite_sales_order_id
              #   This field's availability is dependent on your client's configuration.
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!method initialize(id:, max_amount:, product_id:, quantity:, unit_price:, custom_fields: nil, description: nil, netsuite_sales_order_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ProfessionalService}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param max_amount [Float] Maximum amount for the term.
              #
              #   @param product_id [String]
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
              #
              #   @param custom_fields [Hash{Symbol=>String}]
              #
              #   @param description [String]
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            end

            class RecurringCommit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute access_amount
              #   The amount of commit to grant.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::AccessAmount]
              required :access_amount,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::AccessAmount }

              # @!attribute commit_duration
              #   The amount of time the created commits will be valid for
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::CommitDuration]
              required :commit_duration,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::CommitDuration }

              # @!attribute priority
              #   Will be passed down to the individual commits
              #
              #   @return [Float]
              required :priority, Float

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::Product]
              required :product,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::Product }

              # @!attribute rate_type
              #   Whether the created commits will use the commit rate or list rate
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::RateType }

              # @!attribute starting_at
              #   Determines the start time for the first commit
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute applicable_product_ids
              #   Will be passed down to the individual commits
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #   Will be passed down to the individual commits
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute contract
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::Contract, nil]
              optional :contract,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::Contract }

              # @!attribute description
              #   Will be passed down to the individual commits
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute ending_before
              #   Determines when the contract will stop creating recurring commits. Optional
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute invoice_amount
              #   The amount the customer should be billed for the commit. Not required.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::InvoiceAmount, nil]
              optional :invoice_amount,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::InvoiceAmount }

              # @!attribute name
              #   Displayed on invoices. Will be passed through to the individual commits
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   Will be passed down to the individual commits
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!attribute proration
              #   Determines whether the first and last commit will be prorated. If not provided,
              #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::Proration, nil]
              optional :proration,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::Proration }

              # @!attribute recurrence_frequency
              #   The frequency at which the recurring commits will be created. If not provided: -
              #   The commits will be created on the usage invoice frequency. If provided: - The
              #   period defined in the duration will correspond to this frequency. - Commits will
              #   be created aligned with the recurring commit's start_date rather than the usage
              #   invoice dates.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::RecurrenceFrequency, nil]
              optional :recurrence_frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::RecurrenceFrequency }

              # @!attribute rollover_fraction
              #   Will be passed down to the individual commits. This controls how much of an
              #   individual unexpired commit will roll over upon contract transition. Must be
              #   between 0 and 1.
              #
              #   @return [Float, nil]
              optional :rollover_fraction, Float

              # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, invoice_amount: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param access_amount [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::AccessAmount] The amount of commit to grant.
              #
              #   @param commit_duration [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::CommitDuration] The amount of time the created commits will be valid for
              #
              #   @param priority [Float] Will be passed down to the individual commits
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::Product]
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
              #
              #   @param starting_at [Time] Determines the start time for the first commit
              #
              #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
              #
              #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
              #
              #   @param contract [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::Contract]
              #
              #   @param description [String] Will be passed down to the individual commits
              #
              #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
              #
              #   @param invoice_amount [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit. Not required.
              #
              #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
              #
              #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
              #
              #   @param proration [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
              #
              #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
              #
              #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit#access_amount
              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type_id
                #
                #   @return [String]
                required :credit_type_id, String

                # @!attribute quantity
                #
                #   @return [Float]
                required :quantity, Float

                # @!attribute unit_price
                #
                #   @return [Float]
                required :unit_price, Float

                # @!method initialize(credit_type_id:, quantity:, unit_price:)
                #   The amount of commit to grant.
                #
                #   @param credit_type_id [String]
                #   @param quantity [Float]
                #   @param unit_price [Float]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit#commit_duration
              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute value
                #
                #   @return [Float]
                required :value, Float

                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::CommitDuration::Unit, nil]
                optional :unit,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::CommitDuration::Unit }

                # @!method initialize(value:, unit: nil)
                #   The amount of time the created commits will be valid for
                #
                #   @param value [Float]
                #   @param unit [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::CommitDuration::Unit]

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit::CommitDuration#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  PERIODS = :PERIODS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # Whether the created commits will use the commit rate or list rate
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit#contract
              class Contract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit#invoice_amount
              class InvoiceAmount < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type_id
                #
                #   @return [String]
                required :credit_type_id, String

                # @!attribute quantity
                #
                #   @return [Float]
                required :quantity, Float

                # @!attribute unit_price
                #
                #   @return [Float]
                required :unit_price, Float

                # @!method initialize(credit_type_id:, quantity:, unit_price:)
                #   The amount the customer should be billed for the commit. Not required.
                #
                #   @param credit_type_id [String]
                #   @param quantity [Float]
                #   @param unit_price [Float]
              end

              # Determines whether the first and last commit will be prorated. If not provided,
              # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit#proration
              module Proration
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                FIRST = :FIRST
                LAST = :LAST
                FIRST_AND_LAST = :FIRST_AND_LAST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's start_date rather than the usage
              # invoice dates.
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCommit#recurrence_frequency
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class RecurringCredit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute access_amount
              #   The amount of commit to grant.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::AccessAmount]
              required :access_amount,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::AccessAmount }

              # @!attribute commit_duration
              #   The amount of time the created commits will be valid for
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::CommitDuration]
              required :commit_duration,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::CommitDuration }

              # @!attribute priority
              #   Will be passed down to the individual commits
              #
              #   @return [Float]
              required :priority, Float

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::Product]
              required :product,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::Product }

              # @!attribute rate_type
              #   Whether the created commits will use the commit rate or list rate
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::RateType }

              # @!attribute starting_at
              #   Determines the start time for the first commit
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute applicable_product_ids
              #   Will be passed down to the individual commits
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #   Will be passed down to the individual commits
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute contract
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::Contract, nil]
              optional :contract,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::Contract }

              # @!attribute description
              #   Will be passed down to the individual commits
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute ending_before
              #   Determines when the contract will stop creating recurring commits. Optional
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute name
              #   Displayed on invoices. Will be passed through to the individual commits
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute netsuite_sales_order_id
              #   Will be passed down to the individual commits
              #
              #   @return [String, nil]
              optional :netsuite_sales_order_id, String

              # @!attribute proration
              #   Determines whether the first and last commit will be prorated. If not provided,
              #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::Proration, nil]
              optional :proration,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::Proration }

              # @!attribute recurrence_frequency
              #   The frequency at which the recurring commits will be created. If not provided: -
              #   The commits will be created on the usage invoice frequency. If provided: - The
              #   period defined in the duration will correspond to this frequency. - Commits will
              #   be created aligned with the recurring commit's start_date rather than the usage
              #   invoice dates.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::RecurrenceFrequency, nil]
              optional :recurrence_frequency,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::RecurrenceFrequency }

              # @!attribute rollover_fraction
              #   Will be passed down to the individual commits. This controls how much of an
              #   individual unexpired commit will roll over upon contract transition. Must be
              #   between 0 and 1.
              #
              #   @return [Float, nil]
              optional :rollover_fraction, Float

              # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param access_amount [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::AccessAmount] The amount of commit to grant.
              #
              #   @param commit_duration [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::CommitDuration] The amount of time the created commits will be valid for
              #
              #   @param priority [Float] Will be passed down to the individual commits
              #
              #   @param product [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::Product]
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
              #
              #   @param starting_at [Time] Determines the start time for the first commit
              #
              #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
              #
              #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
              #
              #   @param contract [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::Contract]
              #
              #   @param description [String] Will be passed down to the individual commits
              #
              #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
              #
              #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
              #
              #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
              #
              #   @param proration [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
              #
              #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided:
              #
              #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit#access_amount
              class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute credit_type_id
                #
                #   @return [String]
                required :credit_type_id, String

                # @!attribute quantity
                #
                #   @return [Float]
                required :quantity, Float

                # @!attribute unit_price
                #
                #   @return [Float]
                required :unit_price, Float

                # @!method initialize(credit_type_id:, quantity:, unit_price:)
                #   The amount of commit to grant.
                #
                #   @param credit_type_id [String]
                #   @param quantity [Float]
                #   @param unit_price [Float]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit#commit_duration
              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute value
                #
                #   @return [Float]
                required :value, Float

                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::CommitDuration::Unit, nil]
                optional :unit,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::CommitDuration::Unit }

                # @!method initialize(value:, unit: nil)
                #   The amount of time the created commits will be valid for
                #
                #   @param value [Float]
                #   @param unit [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::CommitDuration::Unit]

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit::CommitDuration#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  PERIODS = :PERIODS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit#product
              class Product < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              # Whether the created commits will use the commit rate or list rate
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit#contract
              class Contract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              # Determines whether the first and last commit will be prorated. If not provided,
              # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit#proration
              module Proration
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                FIRST = :FIRST
                LAST = :LAST
                FIRST_AND_LAST = :FIRST_AND_LAST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's start_date rather than the usage
              # invoice dates.
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::RecurringCredit#recurrence_frequency
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute fraction
              #
              #   @return [Float]
              required :fraction, Float

              # @!attribute netsuite_reseller_id
              #
              #   @return [String]
              required :netsuite_reseller_id, String

              # @!attribute reseller_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ResellerRoyalty::ResellerType]
              required :reseller_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ResellerRoyalty::ResellerType }

              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute applicable_product_ids
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute aws_account_number
              #
              #   @return [String, nil]
              optional :aws_account_number, String

              # @!attribute aws_offer_id
              #
              #   @return [String, nil]
              optional :aws_offer_id, String

              # @!attribute aws_payer_reference_id
              #
              #   @return [String, nil]
              optional :aws_payer_reference_id, String

              # @!attribute ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute gcp_account_id
              #
              #   @return [String, nil]
              optional :gcp_account_id, String

              # @!attribute gcp_offer_id
              #
              #   @return [String, nil]
              optional :gcp_offer_id, String

              # @!attribute reseller_contract_value
              #
              #   @return [Float, nil]
              optional :reseller_contract_value, Float

              # @!method initialize(fraction:, netsuite_reseller_id:, reseller_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil, ending_before: nil, gcp_account_id: nil, gcp_offer_id: nil, reseller_contract_value: nil)
              #   @param fraction [Float]
              #   @param netsuite_reseller_id [String]
              #   @param reseller_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ResellerRoyalty::ResellerType]
              #   @param starting_at [Time]
              #   @param applicable_product_ids [Array<String>]
              #   @param applicable_product_tags [Array<String>]
              #   @param aws_account_number [String]
              #   @param aws_offer_id [String]
              #   @param aws_payer_reference_id [String]
              #   @param ending_before [Time]
              #   @param gcp_account_id [String]
              #   @param gcp_offer_id [String]
              #   @param reseller_contract_value [Float]

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::ResellerRoyalty#reseller_type
              module ResellerType
                extend MetronomeSDK::Internal::Type::Enum

                AWS = :AWS
                AWS_PRO_SERVICE = :AWS_PRO_SERVICE
                GCP = :GCP
                GCP_PRO_SERVICE = :GCP_PRO_SERVICE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # Determines which scheduled and commit charges to consolidate onto the Contract's
            # usage invoice. The charge's `timestamp` must match the usage invoice's
            # `ending_before` date for consolidation to occur. This field cannot be modified
            # after a Contract has been created. If this field is omitted, charges will appear
            # on a separate invoice from usage charges.
            #
            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial#scheduled_charges_on_usage_invoices
            module ScheduledChargesOnUsageInvoices
              extend MetronomeSDK::Internal::Type::Enum

              ALL = :ALL

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial#spend_threshold_configuration
            class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute commit
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::Commit]
              required :commit,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::Commit }

              # @!attribute is_enabled
              #   When set to false, the contract will not be evaluated against the
              #   threshold_amount. Toggling to true will result an immediate evaluation,
              #   regardless of prior state.
              #
              #   @return [Boolean]
              required :is_enabled, MetronomeSDK::Internal::Type::Boolean

              # @!attribute payment_gate_config
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig]
              required :payment_gate_config,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig }

              # @!attribute threshold_amount
              #   Specify the threshold amount for the contract. Each time the contract's usage
              #   hits this amount, a threshold charge will be initiated.
              #
              #   @return [Float]
              required :threshold_amount, Float

              # @!method initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration}
              #   for more details.
              #
              #   @param commit [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::Commit]
              #
              #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
              #
              #   @param payment_gate_config [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig]
              #
              #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration#commit
              class Commit < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute product_id
                #   The commit product that will be used to generate the line item for commit
                #   payment.
                #
                #   @return [String]
                required :product_id, String

                # @!attribute description
                #
                #   @return [String, nil]
                optional :description, String

                # @!attribute name
                #   Specify the name of the line item for the threshold charge. If left blank, it
                #   will default to the commit product name.
                #
                #   @return [String, nil]
                optional :name, String

                # @!method initialize(product_id:, description: nil, name: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::Commit}
                #   for more details.
                #
                #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
                #
                #   @param description [String]
                #
                #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration#payment_gate_config
              class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute payment_gate_type
                #   Gate access to the commit balance based on successful collection of payment.
                #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                #   facilitate payment using your own payment integration. Select NONE if you do not
                #   wish to payment gate the commit balance.
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
                required :payment_gate_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType }

                # @!attribute stripe_config
                #   Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
                optional :stripe_config,
                         -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig }

                # @!attribute tax_type
                #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
                #   will default to NONE.
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
                optional :tax_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::TaxType }

                # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig}
                #   for more details.
                #
                #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
                #
                #   @param stripe_config [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

                # Gate access to the commit balance based on successful collection of payment.
                # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
                # facilitate payment using your own payment integration. Select NONE if you do not
                # wish to payment gate the commit balance.
                #
                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig#payment_gate_type
                module PaymentGateType
                  extend MetronomeSDK::Internal::Type::Enum

                  NONE = :NONE
                  STRIPE = :STRIPE
                  EXTERNAL = :EXTERNAL

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig#stripe_config
                class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute payment_type
                  #   If left blank, will default to INVOICE
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                  required :payment_type,
                           enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

                  # @!method initialize(payment_type:)
                  #   Only applicable if using Stripe as your payment gateway through Metronome.
                  #
                  #   @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

                  # If left blank, will default to INVOICE
                  #
                  # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
                  module PaymentType
                    extend MetronomeSDK::Internal::Type::Enum

                    INVOICE = :INVOICE
                    PAYMENT_INTENT = :PAYMENT_INTENT

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
                # not wish Metronome to calculate tax on your behalf. Leaving this field blank
                # will default to NONE.
                #
                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::SpendThresholdConfiguration::PaymentGateConfig#tax_type
                module TaxType
                  extend MetronomeSDK::Internal::Type::Enum

                  NONE = :NONE
                  STRIPE = :STRIPE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial#usage_filter
            class UsageFilter < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute current
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter::Current, nil]
              required :current,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter::Current },
                       nil?: true

              # @!attribute initial
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter::Initial]
              required :initial,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter::Initial }

              # @!attribute updates
              #
              #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter::Update>]
              required :updates,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter::Update] }

              # @!method initialize(current:, initial:, updates:)
              #   @param current [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter::Current, nil]
              #   @param initial [MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter::Initial]
              #   @param updates [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter::Update>]

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter#current
              class Current < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute group_key
                #
                #   @return [String]
                required :group_key, String

                # @!attribute group_values
                #
                #   @return [Array<String>]
                required :group_values, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute starting_at
                #
                #   @return [Time, nil]
                optional :starting_at, Time

                # @!method initialize(group_key:, group_values:, starting_at: nil)
                #   @param group_key [String]
                #   @param group_values [Array<String>]
                #   @param starting_at [Time]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::Initial::UsageFilter#initial
              class Initial < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute group_key
                #
                #   @return [String]
                required :group_key, String

                # @!attribute group_values
                #
                #   @return [Array<String>]
                required :group_values, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute starting_at
                #
                #   @return [Time, nil]
                optional :starting_at, Time

                # @!method initialize(group_key:, group_values:, starting_at: nil)
                #   @param group_key [String]
                #   @param group_values [Array<String>]
                #   @param starting_at [Time]
              end

              class Update < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute group_key
                #
                #   @return [String]
                required :group_key, String

                # @!attribute group_values
                #
                #   @return [Array<String>]
                required :group_values, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute starting_at
                #
                #   @return [Time]
                required :starting_at, Time

                # @!method initialize(group_key:, group_values:, starting_at:)
                #   @param group_key [String]
                #   @param group_values [Array<String>]
                #   @param starting_at [Time]
              end
            end
          end

          # @see MetronomeSDK::Models::V1::ContractListResponse::Data#customer_billing_provider_configuration
          class CustomerBillingProviderConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute billing_provider
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
            required :billing_provider,
                     enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider }

            # @!attribute delivery_method
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]
            required :delivery_method,
                     enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod }

            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute configuration
            #   Configuration for the billing provider. The structure of this object is specific
            #   to the billing provider.
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :configuration,
                     MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

            # @!method initialize(billing_provider:, delivery_method:, id: nil, configuration: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration}
            #   for more details.
            #
            #   The billing provider configuration associated with a contract.
            #
            #   @param billing_provider [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
            #
            #   @param delivery_method [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]
            #
            #   @param id [String]
            #
            #   @param configuration [Hash{Symbol=>Object}] Configuration for the billing provider. The structure of this object is specific

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration#billing_provider
            module BillingProvider
              extend MetronomeSDK::Internal::Type::Enum

              AWS_MARKETPLACE = :aws_marketplace
              STRIPE = :stripe
              NETSUITE = :netsuite
              CUSTOM = :custom
              AZURE_MARKETPLACE = :azure_marketplace
              QUICKBOOKS_ONLINE = :quickbooks_online
              WORKDAY = :workday
              GCP_MARKETPLACE = :gcp_marketplace

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration#delivery_method
            module DeliveryMethod
              extend MetronomeSDK::Internal::Type::Enum

              DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
              AWS_SQS = :aws_sqs
              TACKLE = :tackle
              AWS_SNS = :aws_sns

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V1::ContractListResponse::Data#prepaid_balance_threshold_configuration
          class PrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute commit
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit]
            required :commit,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit }

            # @!attribute is_enabled
            #   When set to false, the contract will not be evaluated against the
            #   threshold_amount. Toggling to true will result an immediate evaluation,
            #   regardless of prior state.
            #
            #   @return [Boolean]
            required :is_enabled, MetronomeSDK::Internal::Type::Boolean

            # @!attribute payment_gate_config
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
            required :payment_gate_config,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig }

            # @!attribute recharge_to_amount
            #   Specify the amount the balance should be recharged to.
            #
            #   @return [Float]
            required :recharge_to_amount, Float

            # @!attribute threshold_amount
            #   Specify the threshold amount for the contract. Each time the contract's prepaid
            #   balance lowers to this amount, a threshold charge will be initiated.
            #
            #   @return [Float]
            required :threshold_amount, Float

            # @!method initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration}
            #   for more details.
            #
            #   @param commit [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit]
            #
            #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
            #
            #   @param payment_gate_config [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig]
            #
            #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
            #
            #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's prepaid

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration#commit
            class Commit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute product_id
              #   The commit product that will be used to generate the line item for commit
              #   payment.
              #
              #   @return [String]
              required :product_id, String

              # @!attribute applicable_product_ids
              #   Which products the threshold commit applies to. If both applicable_product_ids
              #   and applicable_product_tags are not provided, the commit applies to all
              #   products.
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute applicable_product_tags
              #   Which tags the threshold commit applies to. If both applicable_product_ids and
              #   applicable_product_tags are not provided, the commit applies to all products.
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute name
              #   Specify the name of the line item for the threshold charge. If left blank, it
              #   will default to the commit product name.
              #
              #   @return [String, nil]
              optional :name, String

              # @!method initialize(product_id:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, name: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::Commit}
              #   for more details.
              #
              #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
              #
              #   @param applicable_product_ids [Array<String>] Which products the threshold commit applies to. If both applicable_product_ids a
              #
              #   @param applicable_product_tags [Array<String>] Which tags the threshold commit applies to. If both applicable_product_ids and a
              #
              #   @param description [String]
              #
              #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
            end

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration#payment_gate_config
            class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_gate_type
              #   Gate access to the commit balance based on successful collection of payment.
              #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              #   facilitate payment using your own payment integration. Select NONE if you do not
              #   wish to payment gate the commit balance.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
              required :payment_gate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType }

              # @!attribute stripe_config
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
              optional :stripe_config,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig }

              # @!attribute tax_type
              #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
              #   will default to NONE.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType, nil]
              optional :tax_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType }

              # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig}
              #   for more details.
              #
              #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
              #
              #   @param stripe_config [MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#payment_gate_type
              module PaymentGateType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE
                EXTERNAL = :EXTERNAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#stripe_config
              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute payment_type
                #   If left blank, will default to INVOICE
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                required :payment_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

                # @!method initialize(payment_type:)
                #   Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

                # If left blank, will default to INVOICE
                #
                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
                module PaymentType
                  extend MetronomeSDK::Internal::Type::Enum

                  INVOICE = :INVOICE
                  PAYMENT_INTENT = :PAYMENT_INTENT

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::PrepaidBalanceThresholdConfiguration::PaymentGateConfig#tax_type
              module TaxType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # Determines which scheduled and commit charges to consolidate onto the Contract's
          # usage invoice. The charge's `timestamp` must match the usage invoice's
          # `ending_before` date for consolidation to occur. This field cannot be modified
          # after a Contract has been created. If this field is omitted, charges will appear
          # on a separate invoice from usage charges.
          #
          # @see MetronomeSDK::Models::V1::ContractListResponse::Data#scheduled_charges_on_usage_invoices
          module ScheduledChargesOnUsageInvoices
            extend MetronomeSDK::Internal::Type::Enum

            ALL = :ALL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::ContractListResponse::Data#spend_threshold_configuration
          class SpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute commit
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::Commit]
            required :commit,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::Commit }

            # @!attribute is_enabled
            #   When set to false, the contract will not be evaluated against the
            #   threshold_amount. Toggling to true will result an immediate evaluation,
            #   regardless of prior state.
            #
            #   @return [Boolean]
            required :is_enabled, MetronomeSDK::Internal::Type::Boolean

            # @!attribute payment_gate_config
            #
            #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig]
            required :payment_gate_config,
                     -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig }

            # @!attribute threshold_amount
            #   Specify the threshold amount for the contract. Each time the contract's usage
            #   hits this amount, a threshold charge will be initiated.
            #
            #   @return [Float]
            required :threshold_amount, Float

            # @!method initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration}
            #   for more details.
            #
            #   @param commit [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::Commit]
            #
            #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
            #
            #   @param payment_gate_config [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig]
            #
            #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration#commit
            class Commit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute product_id
              #   The commit product that will be used to generate the line item for commit
              #   payment.
              #
              #   @return [String]
              required :product_id, String

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute name
              #   Specify the name of the line item for the threshold charge. If left blank, it
              #   will default to the commit product name.
              #
              #   @return [String, nil]
              optional :name, String

              # @!method initialize(product_id:, description: nil, name: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::Commit}
              #   for more details.
              #
              #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
              #
              #   @param description [String]
              #
              #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
            end

            # @see MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration#payment_gate_config
            class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_gate_type
              #   Gate access to the commit balance based on successful collection of payment.
              #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              #   facilitate payment using your own payment integration. Select NONE if you do not
              #   wish to payment gate the commit balance.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
              required :payment_gate_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType }

              # @!attribute stripe_config
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
              optional :stripe_config,
                       -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig }

              # @!attribute tax_type
              #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
              #   will default to NONE.
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
              optional :tax_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType }

              # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig}
              #   for more details.
              #
              #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
              #
              #   @param stripe_config [MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param tax_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

              # Gate access to the commit balance based on successful collection of payment.
              # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
              # facilitate payment using your own payment integration. Select NONE if you do not
              # wish to payment gate the commit balance.
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig#payment_gate_type
              module PaymentGateType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE
                EXTERNAL = :EXTERNAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig#stripe_config
              class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute payment_type
                #   If left blank, will default to INVOICE
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
                required :payment_type,
                         enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

                # @!method initialize(payment_type:)
                #   Only applicable if using Stripe as your payment gateway through Metronome.
                #
                #   @param payment_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

                # If left blank, will default to INVOICE
                #
                # @see MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
                module PaymentType
                  extend MetronomeSDK::Internal::Type::Enum

                  INVOICE = :INVOICE
                  PAYMENT_INTENT = :PAYMENT_INTENT

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
              # not wish Metronome to calculate tax on your behalf. Leaving this field blank
              # will default to NONE.
              #
              # @see MetronomeSDK::Models::V1::ContractListResponse::Data::SpendThresholdConfiguration::PaymentGateConfig#tax_type
              module TaxType
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                STRIPE = :STRIPE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end

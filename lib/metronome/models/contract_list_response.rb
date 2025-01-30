# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # contract_list_response => {
    #   data: -> { Metronome::ArrayOf[Metronome::Models::ContractListResponse::Data] === _1 }
    # }
    # ```
    class ContractListResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Array<Metronome::Models::ContractListResponse::Data>]
      required :data, -> { Metronome::ArrayOf[Metronome::Models::ContractListResponse::Data] }

      # @!parse
      #   # @param data [Array<Metronome::Models::ContractListResponse::Data>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   amendments: -> { Metronome::ArrayOf[Metronome::Models::ContractListResponse::Data::Amendment] === _1 },
      #   current: Metronome::Models::ContractWithoutAmendments,
      #   customer_id: String,
      #   initial: Metronome::Models::ContractWithoutAmendments,
      #   **_
      # }
      # ```
      class Data < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amendments
        #
        #   @return [Array<Metronome::Models::ContractListResponse::Data::Amendment>]
        required :amendments,
                 -> {
                   Metronome::ArrayOf[Metronome::Models::ContractListResponse::Data::Amendment]
                 }

        # @!attribute current
        #
        #   @return [Metronome::Models::ContractWithoutAmendments]
        required :current, -> { Metronome::Models::ContractWithoutAmendments }

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute initial
        #
        #   @return [Metronome::Models::ContractWithoutAmendments]
        required :initial, -> { Metronome::Models::ContractWithoutAmendments }

        # @!attribute [r] archived_at
        #   RFC 3339 timestamp indicating when the contract was archived. If not returned,
        #     the contract is not archived.
        #
        #   @return [Time, nil]
        optional :archived_at, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :archived_at

        # @!attribute [r] custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, Metronome::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :custom_fields

        # @!attribute [r] customer_billing_provider_configuration
        #   The billing provider configuration associated with a contract.
        #
        #   @return [Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration, nil]
        optional :customer_billing_provider_configuration,
                 -> { Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration }

        # @!parse
        #   # @return [Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration]
        #   attr_writer :customer_billing_provider_configuration

        # @!attribute [r] scheduled_charges_on_usage_invoices
        #   Determines which scheduled and commit charges to consolidate onto the Contract's
        #     usage invoice. The charge's `timestamp` must match the usage invoice's
        #     `ending_before` date for consolidation to occur. This field cannot be modified
        #     after a Contract has been created. If this field is omitted, charges will appear
        #     on a separate invoice from usage charges.
        #
        #   @return [Symbol, Metronome::Models::ContractListResponse::Data::ScheduledChargesOnUsageInvoices, nil]
        optional :scheduled_charges_on_usage_invoices,
                 enum: -> { Metronome::Models::ContractListResponse::Data::ScheduledChargesOnUsageInvoices }

        # @!parse
        #   # @return [Symbol, Metronome::Models::ContractListResponse::Data::ScheduledChargesOnUsageInvoices]
        #   attr_writer :scheduled_charges_on_usage_invoices

        # @!attribute [r] uniqueness_key
        #   Prevents the creation of duplicates. If a request to create a record is made
        #     with a previously used uniqueness key, a new record will not be created and the
        #     request will fail with a 409 error.
        #
        #   @return [String, nil]
        optional :uniqueness_key, String

        # @!parse
        #   # @return [String]
        #   attr_writer :uniqueness_key

        # @!parse
        #   # @param id [String]
        #   # @param amendments [Array<Metronome::Models::ContractListResponse::Data::Amendment>]
        #   # @param current [Metronome::Models::ContractWithoutAmendments]
        #   # @param customer_id [String]
        #   # @param initial [Metronome::Models::ContractWithoutAmendments]
        #   # @param archived_at [Time]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   # @param customer_billing_provider_configuration [Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration]
        #   # @param scheduled_charges_on_usage_invoices [Symbol, Metronome::Models::ContractListResponse::Data::ScheduledChargesOnUsageInvoices]
        #   # @param uniqueness_key [String]
        #   #
        #   def initialize(
        #     id:,
        #     amendments:,
        #     current:,
        #     customer_id:,
        #     initial:,
        #     archived_at: nil,
        #     custom_fields: nil,
        #     customer_billing_provider_configuration: nil,
        #     scheduled_charges_on_usage_invoices: nil,
        #     uniqueness_key: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # amendment => {
        #   id: String,
        #   commits: -> { Metronome::ArrayOf[Metronome::Models::Commit] === _1 },
        #   created_at: Time,
        #   created_by: String,
        #   overrides: -> { Metronome::ArrayOf[Metronome::Models::Override] === _1 },
        #   **_
        # }
        # ```
        class Amendment < Metronome::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute commits
          #
          #   @return [Array<Metronome::Models::Commit>]
          required :commits, -> { Metronome::ArrayOf[Metronome::Models::Commit] }

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
          #   @return [Array<Metronome::Models::Override>]
          required :overrides, -> { Metronome::ArrayOf[Metronome::Models::Override] }

          # @!attribute scheduled_charges
          #
          #   @return [Array<Metronome::Models::ScheduledCharge>]
          required :scheduled_charges, -> { Metronome::ArrayOf[Metronome::Models::ScheduledCharge] }

          # @!attribute starting_at
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute [r] credits
          #
          #   @return [Array<Metronome::Models::Credit>, nil]
          optional :credits, -> { Metronome::ArrayOf[Metronome::Models::Credit] }

          # @!parse
          #   # @return [Array<Metronome::Models::Credit>]
          #   attr_writer :credits

          # @!attribute [r] discounts
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Array<Metronome::Models::Discount>, nil]
          optional :discounts, -> { Metronome::ArrayOf[Metronome::Models::Discount] }

          # @!parse
          #   # @return [Array<Metronome::Models::Discount>]
          #   attr_writer :discounts

          # @!attribute [r] netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :netsuite_sales_order_id

          # @!attribute [r] professional_services
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Array<Metronome::Models::ProService>, nil]
          optional :professional_services, -> { Metronome::ArrayOf[Metronome::Models::ProService] }

          # @!parse
          #   # @return [Array<Metronome::Models::ProService>]
          #   attr_writer :professional_services

          # @!attribute [r] reseller_royalties
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [Array<Metronome::Models::ContractListResponse::Data::Amendment::ResellerRoyalty>, nil]
          optional :reseller_royalties,
                   -> {
                     Metronome::ArrayOf[Metronome::Models::ContractListResponse::Data::Amendment::ResellerRoyalty]
                   }

          # @!parse
          #   # @return [Array<Metronome::Models::ContractListResponse::Data::Amendment::ResellerRoyalty>]
          #   attr_writer :reseller_royalties

          # @!attribute [r] salesforce_opportunity_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :salesforce_opportunity_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :salesforce_opportunity_id

          # @!parse
          #   # @param id [String]
          #   # @param commits [Array<Metronome::Models::Commit>]
          #   # @param created_at [Time]
          #   # @param created_by [String]
          #   # @param overrides [Array<Metronome::Models::Override>]
          #   # @param scheduled_charges [Array<Metronome::Models::ScheduledCharge>]
          #   # @param starting_at [Time]
          #   # @param credits [Array<Metronome::Models::Credit>]
          #   # @param discounts [Array<Metronome::Models::Discount>]
          #   # @param netsuite_sales_order_id [String]
          #   # @param professional_services [Array<Metronome::Models::ProService>]
          #   # @param reseller_royalties [Array<Metronome::Models::ContractListResponse::Data::Amendment::ResellerRoyalty>]
          #   # @param salesforce_opportunity_id [String]
          #   #
          #   def initialize(
          #     id:,
          #     commits:,
          #     created_at:,
          #     created_by:,
          #     overrides:,
          #     scheduled_charges:,
          #     starting_at:,
          #     credits: nil,
          #     discounts: nil,
          #     netsuite_sales_order_id: nil,
          #     professional_services: nil,
          #     reseller_royalties: nil,
          #     salesforce_opportunity_id: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          # ```ruby
          # reseller_royalty => {
          #   reseller_type: Metronome::Models::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType,
          #   aws_account_number: String,
          #   aws_offer_id: String,
          #   aws_payer_reference_id: String,
          #   ending_before: Time,
          #   **_
          # }
          # ```
          class ResellerRoyalty < Metronome::BaseModel
            # @!attribute reseller_type
            #
            #   @return [Symbol, Metronome::Models::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType]
            required :reseller_type,
                     enum: -> {
                       Metronome::Models::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType
                     }

            # @!attribute [r] aws_account_number
            #
            #   @return [String, nil]
            optional :aws_account_number, String

            # @!parse
            #   # @return [String]
            #   attr_writer :aws_account_number

            # @!attribute [r] aws_offer_id
            #
            #   @return [String, nil]
            optional :aws_offer_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :aws_offer_id

            # @!attribute [r] aws_payer_reference_id
            #
            #   @return [String, nil]
            optional :aws_payer_reference_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :aws_payer_reference_id

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time, nil?: true

            # @!attribute [r] fraction
            #
            #   @return [Float, nil]
            optional :fraction, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :fraction

            # @!attribute [r] gcp_account_id
            #
            #   @return [String, nil]
            optional :gcp_account_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :gcp_account_id

            # @!attribute [r] gcp_offer_id
            #
            #   @return [String, nil]
            optional :gcp_offer_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :gcp_offer_id

            # @!attribute [r] netsuite_reseller_id
            #
            #   @return [String, nil]
            optional :netsuite_reseller_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :netsuite_reseller_id

            # @!attribute [r] reseller_contract_value
            #
            #   @return [Float, nil]
            optional :reseller_contract_value, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :reseller_contract_value

            # @!attribute [r] starting_at
            #
            #   @return [Time, nil]
            optional :starting_at, Time

            # @!parse
            #   # @return [Time]
            #   attr_writer :starting_at

            # @!parse
            #   # @param reseller_type [Symbol, Metronome::Models::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType]
            #   # @param aws_account_number [String]
            #   # @param aws_offer_id [String]
            #   # @param aws_payer_reference_id [String]
            #   # @param ending_before [Time, nil]
            #   # @param fraction [Float]
            #   # @param gcp_account_id [String]
            #   # @param gcp_offer_id [String]
            #   # @param netsuite_reseller_id [String]
            #   # @param reseller_contract_value [Float]
            #   # @param starting_at [Time]
            #   #
            #   def initialize(
            #     reseller_type:,
            #     aws_account_number: nil,
            #     aws_offer_id: nil,
            #     aws_payer_reference_id: nil,
            #     ending_before: nil,
            #     fraction: nil,
            #     gcp_account_id: nil,
            #     gcp_offer_id: nil,
            #     netsuite_reseller_id: nil,
            #     reseller_contract_value: nil,
            #     starting_at: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Metronome::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case reseller_type
            # in :AWS
            #   # ...
            # in :AWS_PRO_SERVICE
            #   # ...
            # in :GCP
            #   # ...
            # in :GCP_PRO_SERVICE
            #   # ...
            # end
            # ```
            class ResellerType < Metronome::Enum
              AWS = :AWS
              AWS_PRO_SERVICE = :AWS_PRO_SERVICE
              GCP = :GCP
              GCP_PRO_SERVICE = :GCP_PRO_SERVICE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        # @example
        # ```ruby
        # customer_billing_provider_configuration => {
        #   billing_provider: Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider,
        #   delivery_method: Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod
        # }
        # ```
        class CustomerBillingProviderConfiguration < Metronome::BaseModel
          # @!attribute billing_provider
          #
          #   @return [Symbol, Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
          required :billing_provider,
                   enum: -> {
                     Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider
                   }

          # @!attribute delivery_method
          #
          #   @return [Symbol, Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]
          required :delivery_method,
                   enum: -> {
                     Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod
                   }

          # @!parse
          #   # The billing provider configuration associated with a contract.
          #   #
          #   # @param billing_provider [Symbol, Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
          #   # @param delivery_method [Symbol, Metronome::Models::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]
          #   #
          #   def initialize(billing_provider:, delivery_method:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case billing_provider
          # in :aws_marketplace
          #   # ...
          # in :stripe
          #   # ...
          # in :netsuite
          #   # ...
          # in :custom
          #   # ...
          # in :azure_marketplace
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class BillingProvider < Metronome::Enum
            AWS_MARKETPLACE = :aws_marketplace
            STRIPE = :stripe
            NETSUITE = :netsuite
            CUSTOM = :custom
            AZURE_MARKETPLACE = :azure_marketplace
            QUICKBOOKS_ONLINE = :quickbooks_online
            WORKDAY = :workday
            GCP_MARKETPLACE = :gcp_marketplace

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          # @abstract
          #
          # @example
          # ```ruby
          # case delivery_method
          # in :direct_to_billing_provider
          #   # ...
          # in :aws_sqs
          #   # ...
          # in :tackle
          #   # ...
          # in :aws_sns
          #   # ...
          # end
          # ```
          class DeliveryMethod < Metronome::Enum
            DIRECT_TO_BILLING_PROVIDER = :direct_to_billing_provider
            AWS_SQS = :aws_sqs
            TACKLE = :tackle
            AWS_SNS = :aws_sns

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @abstract
        #
        # Determines which scheduled and commit charges to consolidate onto the Contract's
        #   usage invoice. The charge's `timestamp` must match the usage invoice's
        #   `ending_before` date for consolidation to occur. This field cannot be modified
        #   after a Contract has been created. If this field is omitted, charges will appear
        #   on a separate invoice from usage charges.
        #
        # @example
        # ```ruby
        # case scheduled_charges_on_usage_invoices
        # in :ALL
        #   # ...
        # end
        # ```
        class ScheduledChargesOnUsageInvoices < Metronome::Enum
          ALL = :ALL

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end

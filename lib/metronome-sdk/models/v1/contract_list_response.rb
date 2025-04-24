# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class ContractListResponse < MetronomeSDK::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data>]
        required :data, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data] }

        # @!parse
        #   # @param data [Array<MetronomeSDK::Models::V1::ContractListResponse::Data>]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Data < MetronomeSDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute amendments
          #
          #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment>]
          required :amendments,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment] }

          # @!attribute current
          #
          #   @return [MetronomeSDK::Models::ContractWithoutAmendments]
          required :current, -> { MetronomeSDK::Models::ContractWithoutAmendments }

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute initial
          #
          #   @return [MetronomeSDK::Models::ContractWithoutAmendments]
          required :initial, -> { MetronomeSDK::Models::ContractWithoutAmendments }

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
          optional :custom_fields, MetronomeSDK::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :custom_fields

          # @!attribute [r] customer_billing_provider_configuration
          #   The billing provider configuration associated with a contract.
          #
          #   @return [MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration, nil]
          optional :customer_billing_provider_configuration,
                   -> { MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration }

          # @!parse
          #   # @return [MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration]
          #   attr_writer :customer_billing_provider_configuration

          # @!attribute [r] scheduled_charges_on_usage_invoices
          #   Determines which scheduled and commit charges to consolidate onto the Contract's
          #     usage invoice. The charge's `timestamp` must match the usage invoice's
          #     `ending_before` date for consolidation to occur. This field cannot be modified
          #     after a Contract has been created. If this field is omitted, charges will appear
          #     on a separate invoice from usage charges.
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices, nil]
          optional :scheduled_charges_on_usage_invoices,
                   enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices]
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
          #   # @param amendments [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment>]
          #   # @param current [MetronomeSDK::Models::ContractWithoutAmendments]
          #   # @param customer_id [String]
          #   # @param initial [MetronomeSDK::Models::ContractWithoutAmendments]
          #   # @param archived_at [Time]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param customer_billing_provider_configuration [MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration]
          #   # @param scheduled_charges_on_usage_invoices [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::ScheduledChargesOnUsageInvoices]
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

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class Amendment < MetronomeSDK::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute commits
            #
            #   @return [Array<MetronomeSDK::Models::Commit>]
            required :commits, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Commit] }

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
            #   @return [Array<MetronomeSDK::Models::Override>]
            required :overrides, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Override] }

            # @!attribute scheduled_charges
            #
            #   @return [Array<MetronomeSDK::Models::ScheduledCharge>]
            required :scheduled_charges, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::ScheduledCharge] }

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute [r] credits
            #
            #   @return [Array<MetronomeSDK::Models::Credit>, nil]
            optional :credits, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Credit] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::Credit>]
            #   attr_writer :credits

            # @!attribute [r] discounts
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::Models::Discount>, nil]
            optional :discounts, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Discount] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::Discount>]
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
            #   @return [Array<MetronomeSDK::Models::ProService>, nil]
            optional :professional_services, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::ProService] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::ProService>]
            #   attr_writer :professional_services

            # @!attribute [r] reseller_royalties
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty>, nil]
            optional :reseller_royalties,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty>]
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
            #   # @param commits [Array<MetronomeSDK::Models::Commit>]
            #   # @param created_at [Time]
            #   # @param created_by [String]
            #   # @param overrides [Array<MetronomeSDK::Models::Override>]
            #   # @param scheduled_charges [Array<MetronomeSDK::Models::ScheduledCharge>]
            #   # @param starting_at [Time]
            #   # @param credits [Array<MetronomeSDK::Models::Credit>]
            #   # @param discounts [Array<MetronomeSDK::Models::Discount>]
            #   # @param netsuite_sales_order_id [String]
            #   # @param professional_services [Array<MetronomeSDK::Models::ProService>]
            #   # @param reseller_royalties [Array<MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty>]
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

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class ResellerRoyalty < MetronomeSDK::BaseModel
              # @!attribute reseller_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType]
              required :reseller_type,
                       enum: -> { MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType }

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
              #   # @param reseller_type [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::Amendment::ResellerRoyalty::ResellerType]
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

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

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
              class ResellerType < MetronomeSDK::Enum
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

          class CustomerBillingProviderConfiguration < MetronomeSDK::BaseModel
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

            # @!attribute [r] id
            #
            #   @return [String, nil]
            optional :id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :id

            # @!attribute [r] configuration
            #   Configuration for the billing provider. The structure of this object is specific
            #     to the billing provider.
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :configuration, MetronomeSDK::HashOf[MetronomeSDK::Unknown]

            # @!parse
            #   # @return [Hash{Symbol=>Object}]
            #   attr_writer :configuration

            # @!parse
            #   # The billing provider configuration associated with a contract.
            #   #
            #   # @param billing_provider [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::BillingProvider]
            #   # @param delivery_method [Symbol, MetronomeSDK::Models::V1::ContractListResponse::Data::CustomerBillingProviderConfiguration::DeliveryMethod]
            #   # @param id [String]
            #   # @param configuration [Hash{Symbol=>Object}]
            #   #
            #   def initialize(billing_provider:, delivery_method:, id: nil, configuration: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

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
            class BillingProvider < MetronomeSDK::Enum
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
            class DeliveryMethod < MetronomeSDK::Enum
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
          class ScheduledChargesOnUsageInvoices < MetronomeSDK::Enum
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
end

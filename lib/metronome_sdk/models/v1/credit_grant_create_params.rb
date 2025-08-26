# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CreditGrants#create
      class CreditGrantCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #   the Metronome ID of the customer
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute expires_at
        #   The credit grant will only apply to usage or charges dated before this timestamp
        #
        #   @return [Time]
        required :expires_at, Time

        # @!attribute grant_amount
        #   the amount of credits granted
        #
        #   @return [MetronomeSDK::Models::V1::CreditGrantCreateParams::GrantAmount]
        required :grant_amount, -> { MetronomeSDK::V1::CreditGrantCreateParams::GrantAmount }

        # @!attribute name
        #   the name of the credit grant as it will appear on invoices
        #
        #   @return [String]
        required :name, String

        # @!attribute paid_amount
        #   the amount paid for this credit grant
        #
        #   @return [MetronomeSDK::Models::V1::CreditGrantCreateParams::PaidAmount]
        required :paid_amount, -> { MetronomeSDK::V1::CreditGrantCreateParams::PaidAmount }

        # @!attribute priority
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute credit_grant_type
        #
        #   @return [String, nil]
        optional :credit_grant_type, String

        # @!attribute custom_fields
        #   Custom fields to attach to the credit grant.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute effective_at
        #   The credit grant will only apply to usage or charges dated on or after this
        #   timestamp
        #
        #   @return [Time, nil]
        optional :effective_at, Time

        # @!attribute invoice_date
        #   The date to issue an invoice for the paid_amount.
        #
        #   @return [Time, nil]
        optional :invoice_date, Time

        # @!attribute product_ids
        #   The product(s) which these credits will be applied to. (If unspecified, the
        #   credits will be applied to charges for all products.). The array ordering
        #   specified here will be used to determine the order in which credits will be
        #   applied to invoice line items
        #
        #   @return [Array<String>, nil]
        optional :product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute reason
        #
        #   @return [String, nil]
        optional :reason, String

        # @!attribute rollover_settings
        #   Configure a rollover for this credit grant so if it expires it rolls over a
        #   configured amount to a new credit grant. This feature is currently opt-in only.
        #   Contact Metronome to be added to the beta.
        #
        #   @return [MetronomeSDK::Models::V1::CreditGrantCreateParams::RolloverSettings, nil]
        optional :rollover_settings, -> { MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings }

        # @!attribute uniqueness_key
        #   Prevents the creation of duplicates. If a request to create a record is made
        #   with a previously used uniqueness key, a new record will not be created and the
        #   request will fail with a 409 error.
        #
        #   @return [String, nil]
        optional :uniqueness_key, String

        # @!method initialize(customer_id:, expires_at:, grant_amount:, name:, paid_amount:, priority:, credit_grant_type: nil, custom_fields: nil, effective_at: nil, invoice_date: nil, product_ids: nil, reason: nil, rollover_settings: nil, uniqueness_key: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CreditGrantCreateParams} for more details.
        #
        #   @param customer_id [String] the Metronome ID of the customer
        #
        #   @param expires_at [Time] The credit grant will only apply to usage or charges dated before this timestamp
        #
        #   @param grant_amount [MetronomeSDK::Models::V1::CreditGrantCreateParams::GrantAmount] the amount of credits granted
        #
        #   @param name [String] the name of the credit grant as it will appear on invoices
        #
        #   @param paid_amount [MetronomeSDK::Models::V1::CreditGrantCreateParams::PaidAmount] the amount paid for this credit grant
        #
        #   @param priority [Float]
        #
        #   @param credit_grant_type [String]
        #
        #   @param custom_fields [Hash{Symbol=>String}] Custom fields to attach to the credit grant.
        #
        #   @param effective_at [Time] The credit grant will only apply to usage or charges dated on or after this time
        #
        #   @param invoice_date [Time] The date to issue an invoice for the paid_amount.
        #
        #   @param product_ids [Array<String>] The product(s) which these credits will be applied to. (If unspecified, the cred
        #
        #   @param reason [String]
        #
        #   @param rollover_settings [MetronomeSDK::Models::V1::CreditGrantCreateParams::RolloverSettings] Configure a rollover for this credit grant so if it expires it rolls over a conf
        #
        #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class GrantAmount < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute credit_type_id
          #   the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
          #
          #   @return [String]
          required :credit_type_id, String

          # @!method initialize(amount:, credit_type_id:)
          #   the amount of credits granted
          #
          #   @param amount [Float]
          #
          #   @param credit_type_id [String] the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
        end

        class PaidAmount < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute credit_type_id
          #   the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
          #
          #   @return [String]
          required :credit_type_id, String

          # @!method initialize(amount:, credit_type_id:)
          #   the amount paid for this credit grant
          #
          #   @param amount [Float]
          #
          #   @param credit_type_id [String] the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
        end

        class RolloverSettings < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute expires_at
          #   The date to expire the rollover credits.
          #
          #   @return [Time]
          required :expires_at, Time

          # @!attribute priority
          #   The priority to give the rollover credit grant that gets created when a rollover
          #   happens.
          #
          #   @return [Float]
          required :priority, Float

          # @!attribute rollover_amount
          #   Specify how much to rollover to the rollover credit grant
          #
          #   @return [MetronomeSDK::Models::V1::RolloverAmountMaxPercentage, MetronomeSDK::Models::V1::RolloverAmountMaxAmount]
          required :rollover_amount,
                   union: -> { MetronomeSDK::V1::CreditGrantCreateParams::RolloverSettings::RolloverAmount }

          # @!method initialize(expires_at:, priority:, rollover_amount:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::CreditGrantCreateParams::RolloverSettings} for more
          #   details.
          #
          #   Configure a rollover for this credit grant so if it expires it rolls over a
          #   configured amount to a new credit grant. This feature is currently opt-in only.
          #   Contact Metronome to be added to the beta.
          #
          #   @param expires_at [Time] The date to expire the rollover credits.
          #
          #   @param priority [Float] The priority to give the rollover credit grant that gets created when a rollover
          #
          #   @param rollover_amount [MetronomeSDK::Models::V1::RolloverAmountMaxPercentage, MetronomeSDK::Models::V1::RolloverAmountMaxAmount] Specify how much to rollover to the rollover credit grant

          # Specify how much to rollover to the rollover credit grant
          #
          # @see MetronomeSDK::Models::V1::CreditGrantCreateParams::RolloverSettings#rollover_amount
          module RolloverAmount
            extend MetronomeSDK::Internal::Type::Union

            variant -> { MetronomeSDK::V1::RolloverAmountMaxPercentage }

            variant -> { MetronomeSDK::V1::RolloverAmountMaxAmount }

            # @!method self.variants
            #   @return [Array(MetronomeSDK::Models::V1::RolloverAmountMaxPercentage, MetronomeSDK::Models::V1::RolloverAmountMaxAmount)]
          end
        end
      end
    end
  end
end

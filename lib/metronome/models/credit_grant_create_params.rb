# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantCreateParams < Metronome::BaseModel
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
      #   @return [Metronome::Models::CreditGrantCreateParams::GrantAmount]
      required :grant_amount, -> { Metronome::Models::CreditGrantCreateParams::GrantAmount }

      # @!attribute name
      #   the name of the credit grant as it will appear on invoices
      #
      #   @return [String]
      required :name, String

      # @!attribute paid_amount
      #   the amount paid for this credit grant
      #
      #   @return [Metronome::Models::CreditGrantCreateParams::PaidAmount]
      required :paid_amount, -> { Metronome::Models::CreditGrantCreateParams::PaidAmount }

      # @!attribute priority
      #
      #   @return [Float]
      required :priority, Float

      # @!attribute [r] credit_grant_type
      #
      #   @return [String, nil]
      optional :credit_grant_type, String

      # @!parse
      #   # @return [String]
      #   attr_writer :credit_grant_type

      # @!attribute [r] custom_fields
      #   Custom fields to attach to the credit grant.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, Metronome::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :custom_fields

      # @!attribute [r] effective_at
      #   The credit grant will only apply to usage or charges dated on or after this timestamp
      #
      #   @return [Time, nil]
      optional :effective_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :effective_at

      # @!attribute [r] invoice_date
      #   The date to issue an invoice for the paid_amount.
      #
      #   @return [Time, nil]
      optional :invoice_date, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :invoice_date

      # @!attribute [r] product_ids
      #   The product(s) which these credits will be applied to. (If unspecified, the credits will be applied to charges for all products.). The array ordering specified here will be used to determine the order in which credits will be applied to invoice line items
      #
      #   @return [Array<String>]
      optional :product_ids, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :product_ids

      # @!attribute [r] reason
      #
      #   @return [String, nil]
      optional :reason, String

      # @!parse
      #   # @return [String]
      #   attr_writer :reason

      # @!attribute [r] rollover_settings
      #   Configure a rollover for this credit grant so if it expires it rolls over a configured amount to a new credit grant. This feature is currently opt-in only. Contact Metronome to be added to the beta.
      #
      #   @return [Metronome::Models::CreditGrantCreateParams::RolloverSettings, nil]
      optional :rollover_settings, -> { Metronome::Models::CreditGrantCreateParams::RolloverSettings }

      # @!parse
      #   # @return [Metronome::Models::CreditGrantCreateParams::RolloverSettings]
      #   attr_writer :rollover_settings

      # @!attribute [r] uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error.
      #
      #   @return [String, nil]
      optional :uniqueness_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :uniqueness_key

      # @!parse
      #   # @param customer_id [String] the Metronome ID of the customer
      #   #
      #   # @param expires_at [String] The credit grant will only apply to usage or charges dated before this timestamp
      #   #
      #   # @param grant_amount [Metronome::Models::CreditGrantCreateParams::GrantAmount] the amount of credits granted
      #   #
      #   # @param name [String] the name of the credit grant as it will appear on invoices
      #   #
      #   # @param paid_amount [Metronome::Models::CreditGrantCreateParams::PaidAmount] the amount paid for this credit grant
      #   #
      #   # @param priority [Float]
      #   #
      #   # @param credit_grant_type [String]
      #   #
      #   # @param custom_fields [Hash{Symbol=>String}] Custom fields to attach to the credit grant.
      #   #
      #   # @param effective_at [String] The credit grant will only apply to usage or charges dated on or after this
      #   #   timestamp
      #   #
      #   # @param invoice_date [String] The date to issue an invoice for the paid_amount.
      #   #
      #   # @param product_ids [Array<String>] The product(s) which these credits will be applied to. (If unspecified, the
      #   #   credits will be applied to charges for all products.). The array ordering
      #   #   specified here will be used to determine the order in which credits will be
      #   #   applied to invoice line items
      #   #
      #   # @param reason [String]
      #   #
      #   # @param rollover_settings [Metronome::Models::CreditGrantCreateParams::RolloverSettings] Configure a rollover for this credit grant so if it expires it rolls over a
      #   #   configured amount to a new credit grant. This feature is currently opt-in only.
      #   #   Contact Metronome to be added to the beta.
      #   #
      #   # @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made
      #   #   with a previously used uniqueness key, a new record will not be created and the
      #   #   request will fail with a 409 error.
      #   #
      #   def initialize(
      #     customer_id:,
      #     expires_at:,
      #     grant_amount:,
      #     name:,
      #     paid_amount:,
      #     priority:,
      #     credit_grant_type: nil,
      #     custom_fields: nil,
      #     effective_at: nil,
      #     invoice_date: nil,
      #     product_ids: nil,
      #     reason: nil,
      #     rollover_settings: nil,
      #     uniqueness_key: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # grant_amount => {
      #   amount: Float,
      #   credit_type_id: String
      # }
      # ```
      class GrantAmount < Metronome::BaseModel
        # @!attribute amount
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute credit_type_id
        #   the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
        #
        #   @return [String]
        required :credit_type_id, String

        # @!parse
        #   # the amount of credits granted
        #   #
        #   # @param amount [Float]
        #   #
        #   # @param credit_type_id [String] the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
        #   #
        #   def initialize(amount:, credit_type_id:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
      # ```ruby
      # paid_amount => {
      #   amount: Float,
      #   credit_type_id: String
      # }
      # ```
      class PaidAmount < Metronome::BaseModel
        # @!attribute amount
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute credit_type_id
        #   the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
        #
        #   @return [String]
        required :credit_type_id, String

        # @!parse
        #   # the amount paid for this credit grant
        #   #
        #   # @param amount [Float]
        #   #
        #   # @param credit_type_id [String] the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
        #   #
        #   def initialize(amount:, credit_type_id:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
      # ```ruby
      # rollover_settings => {
      #   expires_at: Time,
      #   priority: Float,
      #   rollover_amount: union: Metronome::Models::CreditGrantCreateParams::RolloverSettings::RolloverAmount
      # }
      # ```
      class RolloverSettings < Metronome::BaseModel
        # @!attribute expires_at
        #   The date to expire the rollover credits.
        #
        #   @return [Time]
        required :expires_at, Time

        # @!attribute priority
        #   The priority to give the rollover credit grant that gets created when a rollover happens.
        #
        #   @return [Float]
        required :priority, Float

        # @!attribute rollover_amount
        #   Specify how much to rollover to the rollover credit grant
        #
        #   @return [Metronome::Models::RolloverAmountMaxPercentage, Metronome::Models::RolloverAmountMaxAmount]
        required :rollover_amount,
                 union: -> { Metronome::Models::CreditGrantCreateParams::RolloverSettings::RolloverAmount }

        # @!parse
        #   # Configure a rollover for this credit grant so if it expires it rolls over a
        #   #   configured amount to a new credit grant. This feature is currently opt-in only.
        #   #   Contact Metronome to be added to the beta.
        #   #
        #   # @param expires_at [String] The date to expire the rollover credits.
        #   #
        #   # @param priority [Float] The priority to give the rollover credit grant that gets created when a rollover
        #   #   happens.
        #   #
        #   # @param rollover_amount [Metronome::Models::RolloverAmountMaxPercentage, Metronome::Models::RolloverAmountMaxAmount] Specify how much to rollover to the rollover credit grant
        #   #
        #   def initialize(expires_at:, priority:, rollover_amount:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # Specify how much to rollover to the rollover credit grant
        #
        # @example
        # ```ruby
        # case rollover_amount
        # in Metronome::Models::RolloverAmountMaxPercentage
        #   # ...
        # in Metronome::Models::RolloverAmountMaxAmount
        #   # ...
        # end
        # ```
        class RolloverAmount < Metronome::Union
          variant -> { Metronome::Models::RolloverAmountMaxPercentage }

          variant -> { Metronome::Models::RolloverAmountMaxAmount }
        end
      end
    end
  end
end

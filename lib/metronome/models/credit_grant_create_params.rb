# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantCreateParams < Metronome::BaseModel
      # @!attribute customer_id
      #   the Metronome ID of the customer
      #   @return [String]
      required :customer_id, String

      # @!attribute expires_at
      #   The credit grant will only apply to usage or charges dated before this timestamp
      #   @return [Time]
      required :expires_at, Time

      # @!attribute grant_amount
      #   the amount of credits granted
      #   @return [Metronome::Models::CreditGrantCreateParams::GrantAmount]
      required :grant_amount, -> { Metronome::Models::CreditGrantCreateParams::GrantAmount }

      # @!attribute name
      #   the name of the credit grant as it will appear on invoices
      #   @return [String]
      required :name, String

      # @!attribute paid_amount
      #   the amount paid for this credit grant
      #   @return [Metronome::Models::CreditGrantCreateParams::PaidAmount]
      required :paid_amount, -> { Metronome::Models::CreditGrantCreateParams::PaidAmount }

      # @!attribute priority
      #   @return [Float]
      required :priority, Float

      # @!attribute credit_grant_type
      #   @return [String]
      optional :credit_grant_type, String

      # @!attribute custom_fields
      #   Custom fields to attach to the credit grant.
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!attribute effective_at
      #   The credit grant will only apply to usage or charges dated on or after this timestamp
      #   @return [Time]
      optional :effective_at, Time

      # @!attribute invoice_date
      #   The date to issue an invoice for the paid_amount.
      #   @return [Time]
      optional :invoice_date, Time

      # @!attribute product_ids
      #   The product(s) which these credits will be applied to. (If unspecified, the credits will be applied to charges for all products.). The array ordering specified here will be used to determine the order in which credits will be applied to invoice line items
      #   @return [Array<String>]
      optional :product_ids, Metronome::ArrayOf.new(String)

      # @!attribute reason
      #   @return [String]
      optional :reason, String

      # @!attribute rollover_settings
      #   Configure a rollover for this credit grant so if it expires it rolls over a configured amount to a new credit grant. This feature is currently opt-in only. Contact Metronome to be added to the beta.
      #   @return [Metronome::Models::CreditGrantCreateParams::RolloverSettings]
      optional :rollover_settings, -> { Metronome::Models::CreditGrantCreateParams::RolloverSettings }

      # @!attribute uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error.
      #   @return [String]
      optional :uniqueness_key, String

      class GrantAmount < Metronome::BaseModel
        # @!attribute amount
        #   @return [Float]
        required :amount, Float

        # @!attribute credit_type_id
        #   the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
        #   @return [String]
        required :credit_type_id, String

        # @!parse
        #   # Create a new instance of GrantAmount from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Float] :amount
        #   #   @option data [String] :credit_type_id the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
        #   def initialize(data = {}) = super
      end

      class PaidAmount < Metronome::BaseModel
        # @!attribute amount
        #   @return [Float]
        required :amount, Float

        # @!attribute credit_type_id
        #   the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
        #   @return [String]
        required :credit_type_id, String

        # @!parse
        #   # Create a new instance of PaidAmount from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Float] :amount
        #   #   @option data [String] :credit_type_id the ID of the pricing unit to be used. Defaults to USD (cents) if not passed.
        #   def initialize(data = {}) = super
      end

      class RolloverSettings < Metronome::BaseModel
        # @!attribute expires_at
        #   The date to expire the rollover credits.
        #   @return [Time]
        required :expires_at, Time

        # @!attribute priority
        #   The priority to give the rollover credit grant that gets created when a rollover happens.
        #   @return [Float]
        required :priority, Float

        # @!attribute rollover_amount
        #   Specify how much to rollover to the rollover credit grant
        #   @return [Metronome::Models::RolloverAmountMaxAmount, Metronome::Models::RolloverAmountMaxPercentage]
        required :rollover_amount, Metronome::Unknown

        # @!parse
        #   # Create a new instance of RolloverSettings from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :expires_at The date to expire the rollover credits.
        #   #   @option data [Float] :priority The priority to give the rollover credit grant that gets created when a rollover
        #   #     happens.
        #   #   @option data [Object] :rollover_amount Specify how much to rollover to the rollover credit grant
        #   def initialize(data = {}) = super
      end
    end
  end
end

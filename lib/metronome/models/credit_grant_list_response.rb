# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantListResponse < BaseModel
      # @!attribute [rw] id
      #   the Metronome ID of the credit grant
      #   @return [String]
      required :id, String

      # @!attribute [rw] balance
      #   The effective balance of the grant as of the end of the customer's current billing period. Expiration deductions will be included only if the grant expires before the end of the current billing period.
      #   @return [Metronome::Models::CreditGrantListResponse::Balance]
      required :balance, -> { Metronome::Models::CreditGrantListResponse::Balance }

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      required :custom_fields, Hash

      # @!attribute [rw] customer_id
      #   the Metronome ID of the customer
      #   @return [String]
      required :customer_id, String

      # @!attribute [rw] deductions
      #   @return [Array<Metronome::Models::CreditLedgerEntry>]
      required :deductions, Metronome::ArrayOf.new(-> { Metronome::Models::CreditLedgerEntry })

      # @!attribute [rw] effective_at
      #   @return [Time]
      required :effective_at, Time

      # @!attribute [rw] expires_at
      #   @return [Time]
      required :expires_at, Time

      # @!attribute [rw] grant_amount
      #   the amount of credits initially granted
      #   @return [Metronome::Models::CreditGrantListResponse::GrantAmount]
      required :grant_amount, -> { Metronome::Models::CreditGrantListResponse::GrantAmount }

      # @!attribute [rw] name_
      #   @return [String]
      required :name_, String

      # @!attribute [rw] paid_amount
      #   the amount paid for this credit grant
      #   @return [Metronome::Models::CreditGrantListResponse::PaidAmount]
      required :paid_amount, -> { Metronome::Models::CreditGrantListResponse::PaidAmount }

      # @!attribute [rw] pending_deductions
      #   @return [Array<Metronome::Models::CreditLedgerEntry>]
      required :pending_deductions, Metronome::ArrayOf.new(-> { Metronome::Models::CreditLedgerEntry })

      # @!attribute [rw] priority
      #   @return [Float]
      required :priority, Float

      # @!attribute [rw] credit_grant_type
      #   @return [String]
      optional :credit_grant_type, String

      # @!attribute [rw] invoice_id
      #   the Metronome ID of the invoice with the purchase charge for this credit grant, if applicable
      #   @return [String]
      optional :invoice_id, String

      # @!attribute [rw] products
      #   The products which these credits will be applied to. (If unspecified, the credits will be applied to charges for all products.)
      #   @return [Array<Metronome::Models::CreditGrantListResponse::Product>]
      optional :products, Metronome::ArrayOf.new(-> { Metronome::Models::CreditGrantListResponse::Product })

      # @!attribute [rw] reason
      #   @return [String]
      optional :reason, String

      # @!attribute [rw] uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error.
      #   @return [String]
      optional :uniqueness_key, String

      class Balance < BaseModel
        # @!attribute [rw] effective_at
        #   The end_date of the customer's current billing period.
        #   @return [Time]
        required :effective_at, Time

        # @!attribute [rw] excluding_pending
        #   The grant's current balance including all posted deductions. If the grant has expired, this amount will be 0.
        #   @return [Float]
        required :excluding_pending, Float

        # @!attribute [rw] including_pending
        #   The grant's current balance including all posted and pending deductions. If the grant expires before the end of the customer's current billing period, this amount will be 0.
        #   @return [Float]
        required :including_pending, Float

        # Create a new instance of Balance from a Hash of raw data.
        #
        # @overload initialize(effective_at: nil, excluding_pending: nil, including_pending: nil)
        # @param effective_at [String] The end_date of the customer's current billing period.
        # @param excluding_pending [Float] The grant's current balance including all posted deductions. If the grant has
        #   expired, this amount will be 0.
        # @param including_pending [Float] The grant's current balance including all posted and pending deductions. If the
        #   grant expires before the end of the customer's current billing period, this
        #   amount will be 0.
        def initialize(data = {})
          super
        end
      end

      class GrantAmount < BaseModel
        # @!attribute [rw] amount
        #   @return [Float]
        required :amount, Float

        # @!attribute [rw] credit_type
        #   the credit type for the amount granted
        #   @return [Metronome::Models::CreditTypeData]
        required :credit_type, -> { Metronome::Models::CreditTypeData }

        # Create a new instance of GrantAmount from a Hash of raw data.
        #
        # @overload initialize(amount: nil, credit_type: nil)
        # @param amount [Float]
        # @param credit_type [Object] the credit type for the amount granted
        def initialize(data = {})
          super
        end
      end

      class PaidAmount < BaseModel
        # @!attribute [rw] amount
        #   @return [Float]
        required :amount, Float

        # @!attribute [rw] credit_type
        #   the credit type for the amount paid
        #   @return [Metronome::Models::CreditTypeData]
        required :credit_type, -> { Metronome::Models::CreditTypeData }

        # Create a new instance of PaidAmount from a Hash of raw data.
        #
        # @overload initialize(amount: nil, credit_type: nil)
        # @param amount [Float]
        # @param credit_type [Object] the credit type for the amount paid
        def initialize(data = {})
          super
        end
      end

      class Product < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # Create a new instance of Product from a Hash of raw data.
        #
        # @overload initialize(id: nil, name: nil)
        # @param id [String]
        # @param name [String]
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of CreditGrantListResponse from a Hash of raw data.
      #
      # @overload initialize(id: nil, balance: nil, custom_fields: nil, customer_id: nil, deductions: nil, effective_at: nil, expires_at: nil, grant_amount: nil, name: nil, paid_amount: nil, pending_deductions: nil, priority: nil, credit_grant_type: nil, invoice_id: nil, products: nil, reason: nil, uniqueness_key: nil)
      # @param id [String] the Metronome ID of the credit grant
      # @param balance [Object] The effective balance of the grant as of the end of the customer's current
      #   billing period. Expiration deductions will be included only if the grant expires
      #   before the end of the current billing period.
      # @param custom_fields [Hash]
      # @param customer_id [String] the Metronome ID of the customer
      # @param deductions [Array<Object>]
      # @param effective_at [String]
      # @param expires_at [String]
      # @param grant_amount [Object] the amount of credits initially granted
      # @param name [String]
      # @param paid_amount [Object] the amount paid for this credit grant
      # @param pending_deductions [Array<Object>]
      # @param priority [Float]
      # @param credit_grant_type [String]
      # @param invoice_id [String] the Metronome ID of the invoice with the purchase charge for this credit grant,
      #   if applicable
      # @param products [Array<Object>] The products which these credits will be applied to. (If unspecified, the
      #   credits will be applied to charges for all products.)
      # @param reason [String]
      # @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made
      #   with a previously used uniqueness key, a new record will not be created and the
      #   request will fail with a 409 error.
      def initialize(data = {})
        super
      end
    end
  end
end

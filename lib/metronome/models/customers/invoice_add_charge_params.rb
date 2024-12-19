# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class InvoiceAddChargeParams < Metronome::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute charge_id
        #   The Metronome ID of the charge to add to the invoice. Note that the charge must be on a product that is not on the current plan, and the product must have only fixed charges.
        #
        #   @return [String]
        required :charge_id, String

        # @!attribute customer_plan_id
        #   The Metronome ID of the customer plan to add the charge to.
        #
        #   @return [String]
        required :customer_plan_id, String

        # @!attribute description
        #
        #   @return [String]
        required :description, String

        # @!attribute invoice_start_timestamp
        #   The start_timestamp of the invoice to add the charge to.
        #
        #   @return [Time]
        required :invoice_start_timestamp, Time

        # @!attribute price
        #   The price of the charge. This price will match the currency on the invoice, e.g. USD cents.
        #
        #   @return [Float]
        required :price, Float

        # @!attribute quantity
        #
        #   @return [Float]
        required :quantity, Float

        # @!parse
        #   # @param customer_id [String]
        #   #
        #   # @param charge_id [String] The Metronome ID of the charge to add to the invoice. Note that the charge must
        #   #   be on a product that is not on the current plan, and the product must have only
        #   #   fixed charges.
        #   #
        #   # @param customer_plan_id [String] The Metronome ID of the customer plan to add the charge to.
        #   #
        #   # @param description [String]
        #   #
        #   # @param invoice_start_timestamp [String] The start_timestamp of the invoice to add the charge to.
        #   #
        #   # @param price [Float] The price of the charge. This price will match the currency on the invoice, e.g.
        #   #   USD cents.
        #   #
        #   # @param quantity [Float]
        #   #
        #   def initialize(customer_id:, charge_id:, customer_plan_id:, description:, invoice_start_timestamp:, price:, quantity:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end

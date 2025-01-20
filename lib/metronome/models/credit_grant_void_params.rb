# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantVoidParams < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute [r] release_uniqueness_key
      #   If true, resets the uniqueness key on this grant so it can be re-used
      #
      #   @return [Boolean, nil]
      optional :release_uniqueness_key, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :release_uniqueness_key

      # @!attribute [r] void_credit_purchase_invoice
      #   If true, void the purchase invoice associated with the grant
      #
      #   @return [Boolean, nil]
      optional :void_credit_purchase_invoice, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :void_credit_purchase_invoice

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param release_uniqueness_key [Boolean] If true, resets the uniqueness key on this grant so it can be re-used
      #   #
      #   # @param void_credit_purchase_invoice [Boolean] If true, void the purchase invoice associated with the grant
      #   #
      #   def initialize(id:, release_uniqueness_key: nil, void_credit_purchase_invoice: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end

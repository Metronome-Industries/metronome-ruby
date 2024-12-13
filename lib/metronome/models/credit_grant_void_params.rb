# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantVoidParams < Metronome::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute release_uniqueness_key
      #   If true, resets the uniqueness key on this grant so it can be re-used
      #   @return [Boolean]
      optional :release_uniqueness_key, Metronome::BooleanModel

      # @!attribute void_credit_purchase_invoice
      #   If true, void the purchase invoice associated with the grant
      #   @return [Boolean]
      optional :void_credit_purchase_invoice, Metronome::BooleanModel
    end
  end
end

# typed: strong

module Metronome
  module Models
    class CustomFieldListKeysParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all({next_page: String, entities: T::Array[Symbol]}, Metronome::RequestParameters::Shape)
      end

      sig { returns(T.nilable(String)) }
      attr_reader :next_page

      sig { params(next_page: String).void }
      attr_writer :next_page

      sig { returns(T::Array[Symbol]) }
      attr_reader :entities

      sig { params(entities: T::Array[Symbol]).void }
      attr_writer :entities

      sig do
        params(next_page: String, entities: T::Array[Symbol], request_options: Metronome::RequestOpts).void
      end
      def initialize(next_page: nil, entities: nil, request_options: {}); end

      sig { returns(Metronome::Models::CustomFieldListKeysParams::Shape) }
      def to_h; end

      class Entity < Metronome::Enum
        abstract!

        ALERT = :alert
        BILLABLE_METRIC = :billable_metric
        CHARGE = :charge
        COMMIT = :commit
        CONTRACT_CREDIT = :contract_credit
        CONTRACT_PRODUCT = :contract_product
        CONTRACT = :contract
        CREDIT_GRANT = :credit_grant
        CUSTOMER_PLAN = :customer_plan
        CUSTOMER = :customer
        DISCOUNT = :discount
        INVOICE = :invoice
        PLAN = :plan
        PROFESSIONAL_SERVICE = :professional_service
        PRODUCT = :product
        RATE_CARD = :rate_card
        SCHEDULED_CHARGE = :scheduled_charge

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end

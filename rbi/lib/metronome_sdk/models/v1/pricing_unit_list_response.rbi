# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PricingUnitListResponse < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_currency

        sig { params(is_currency: T::Boolean).void }
        attr_writer :is_currency

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(id: String, is_currency: T::Boolean, name: String).returns(T.attached_class) }
        def self.new(id: nil, is_currency: nil, name: nil); end

        sig { override.returns({id: String, is_currency: T::Boolean, name: String}) }
        def to_hash; end
      end
    end
  end
end

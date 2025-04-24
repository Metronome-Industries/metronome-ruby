# typed: strong

module MetronomeSDK
  module Models
    module V1
      class PricingUnitListResponse < MetronomeSDK::BaseModel
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def is_currency
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def is_currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { params(id: String, is_currency: T::Boolean, name: String).void }
        def initialize(id: nil, is_currency: nil, name: nil)
        end

        sig { override.returns({id: String, is_currency: T::Boolean, name: String}) }
        def to_hash
        end
      end
    end
  end
end

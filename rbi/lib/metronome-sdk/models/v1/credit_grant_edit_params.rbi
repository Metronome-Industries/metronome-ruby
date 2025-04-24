# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CreditGrantEditParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def credit_grant_type
        end

        sig { params(_: String).returns(String) }
        def credit_grant_type=(_)
        end

        sig { returns(T.nilable(Time)) }
        def expires_at
        end

        sig { params(_: Time).returns(Time) }
        def expires_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig do
          params(
            id: String,
            credit_grant_type: String,
            expires_at: Time,
            name: String,
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(id:, credit_grant_type: nil, expires_at: nil, name: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                id: String,
                credit_grant_type: String,
                expires_at: Time,
                name: String,
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end

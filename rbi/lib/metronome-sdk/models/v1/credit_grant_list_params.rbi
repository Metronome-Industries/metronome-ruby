# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CreditGrantListParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(T.nilable(Integer)) }
        def limit
        end

        sig { params(_: Integer).returns(Integer) }
        def limit=(_)
        end

        sig { returns(T.nilable(String)) }
        def next_page
        end

        sig { params(_: String).returns(String) }
        def next_page=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def credit_grant_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def credit_grant_ids=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def credit_type_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def credit_type_ids=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def customer_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def customer_ids=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_before
        end

        sig { params(_: Time).returns(Time) }
        def effective_before=(_)
        end

        sig { returns(T.nilable(Time)) }
        def not_expiring_before
        end

        sig { params(_: Time).returns(Time) }
        def not_expiring_before=(_)
        end

        sig do
          params(
            limit: Integer,
            next_page: String,
            credit_grant_ids: T::Array[String],
            credit_type_ids: T::Array[String],
            customer_ids: T::Array[String],
            effective_before: Time,
            not_expiring_before: Time,
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(
          limit: nil,
          next_page: nil,
          credit_grant_ids: nil,
          credit_type_ids: nil,
          customer_ids: nil,
          effective_before: nil,
          not_expiring_before: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                limit: Integer,
                next_page: String,
                credit_grant_ids: T::Array[String],
                credit_type_ids: T::Array[String],
                customer_ids: T::Array[String],
                effective_before: Time,
                not_expiring_before: Time,
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

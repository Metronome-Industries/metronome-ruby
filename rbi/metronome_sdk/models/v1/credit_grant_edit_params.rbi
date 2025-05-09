# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CreditGrantEditParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        # the ID of the credit grant
        sig { returns(String) }
        attr_accessor :id

        # the updated credit grant type
        sig { returns(T.nilable(String)) }
        attr_reader :credit_grant_type

        sig { params(credit_grant_type: String).void }
        attr_writer :credit_grant_type

        # the updated expiration date for the credit grant
        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at

        sig { params(expires_at: Time).void }
        attr_writer :expires_at

        # the updated name for the credit grant
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            id: String,
            credit_grant_type: String,
            expires_at: Time,
            name: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # the ID of the credit grant
          id:,
          # the updated credit grant type
          credit_grant_type: nil,
          # the updated expiration date for the credit grant
          expires_at: nil,
          # the updated name for the credit grant
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
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

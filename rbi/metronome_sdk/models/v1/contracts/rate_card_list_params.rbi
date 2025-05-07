# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class RateCardListParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          # Max number of results that should be returned
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Cursor that indicates where the next page of results should start.
          sig { returns(T.nilable(String)) }
          attr_reader :next_page

          sig { params(next_page: String).void }
          attr_writer :next_page

          sig { returns(T.nilable(T.anything)) }
          attr_reader :body

          sig { params(body: T.anything).void }
          attr_writer :body

          sig do
            params(
              limit: Integer,
              next_page: String,
              body: T.anything,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Max number of results that should be returned
            limit: nil,
            # Cursor that indicates where the next page of results should start.
            next_page: nil,
            body: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                limit: Integer,
                next_page: String,
                body: T.anything,
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
end

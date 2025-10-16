# typed: strong

module MetronomeSDK
  module Models
    module V1
      class AlertArchiveParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::AlertArchiveParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # The Metronome ID of the threshold notification
        sig { returns(String) }
        attr_accessor :id

        # If true, resets the uniqueness key on this threshold notification so it can be
        # re-used
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :release_uniqueness_key

        sig { params(release_uniqueness_key: T::Boolean).void }
        attr_writer :release_uniqueness_key

        sig do
          params(
            id: String,
            release_uniqueness_key: T::Boolean,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The Metronome ID of the threshold notification
          id:,
          # If true, resets the uniqueness key on this threshold notification so it can be
          # re-used
          release_uniqueness_key: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              release_uniqueness_key: T::Boolean,
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

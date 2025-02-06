# typed: strong

module Metronome
  module Models
    class CustomerArchiveParams < Metronome::Models::ID
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { params(request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])).void }
      def initialize(request_options: {})
      end

      sig { override.returns({request_options: Metronome::RequestOptions}) }
      def to_hash
      end
    end
  end
end

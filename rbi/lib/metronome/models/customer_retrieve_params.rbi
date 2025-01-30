# typed: strong

module Metronome
  module Models
    class CustomerRetrieveParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias { T.all({customer_id: String}, Metronome::RequestParameters::Shape) }

      sig { returns(String) }
      attr_accessor :customer_id

      sig { params(customer_id: String, request_options: Metronome::RequestOpts).void }
      def initialize(customer_id:, request_options: {}); end

      sig { returns(Metronome::Models::CustomerRetrieveParams::Shape) }
      def to_h; end
    end
  end
end

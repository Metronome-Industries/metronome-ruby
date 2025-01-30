# typed: strong

module Metronome
  module Models
    class CustomerSetNameParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias { T.all({customer_id: String, name: String}, Metronome::RequestParameters::Shape) }

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(String) }
      attr_accessor :name

      sig { params(customer_id: String, name: String, request_options: Metronome::RequestOpts).void }
      def initialize(customer_id:, name:, request_options: {}); end

      sig { returns(Metronome::Models::CustomerSetNameParams::Shape) }
      def to_h; end
    end
  end
end

# frozen_string_literal: true

module MetronomeSDK
  module Internal
    # @generic Elem
    #
    # @example
    #   if body_cursor_page_cursor_field.has_next?
    #     body_cursor_page_cursor_field = body_cursor_page_cursor_field.next_page
    #   end
    #
    # @example
    #   body_cursor_page_cursor_field.auto_paging_each do |offset|
    #     puts(offset)
    #   end
    class BodyCursorPageCursorField
      include MetronomeSDK::Internal::Type::BasePage

      # @return [String]
      attr_accessor :cursor

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [Boolean]
      def next_page?
        !cursor.to_s.empty?
      end

      # @raise [MetronomeSDK::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = MetronomeSDK::Internal::Util.deep_merge(@req, {body: {cursor: cursor}})
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.data&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [MetronomeSDK::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        @cursor = page_data[:cursor]
        case page_data
        in {data: Array => data}
          @data = data.map { MetronomeSDK::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = MetronomeSDK::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)} cursor=#{cursor.inspect}>"
      end
    end
  end
end

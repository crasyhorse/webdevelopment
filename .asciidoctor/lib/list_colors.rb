require 'asciidoctor'
require 'asciidoctor/extensions'

class ListColorTreeProcessor < Asciidoctor::Extensions::TreeProcessor
  def process(document)
    process_blocks(document.blocks, 0)
    nil
  end

  private

  def process_blocks(blocks, list_depth)
    blocks.each do |block|
      if block.context == :ulist
        current_depth = list_depth + 1

        block.items.each do |item|
          apply_role(item, current_depth)

          process_blocks(item.blocks, current_depth) if item.blocks?
        end
      elsif block.respond_to?(:blocks?) && block.blocks?
        process_blocks(block.blocks, list_depth)
      end
    end
  end

  def apply_role(item, depth)
    role = depth == 1 ? 'red-list' : 'blue-list'

    # Access the original, unsubstituted AsciiDoc text.
    raw_text = item.instance_variable_get(:@text)

    return if raw_text.nil? || raw_text.empty?
    return if raw_text.start_with?("[.#{role}]#")

    item.text = "[.#{role}]##{raw_text}#"
  end
end

Asciidoctor::Extensions.register do
  tree_processor ListColorTreeProcessor
end
$indentation_level = 0
$indentation = "  "

def log (block_string, &block)
  print $indentation * $indentation_level
  puts "Beginning \"#{block_string}\"..."
  $indentation_level += 1
  returned_value = block.call
  $indentation_level -= 1
  print $indentation * $indentation_level
  puts "...\"#{block_string}\" finished, returning: #{returned_value}"
end

log "outer block" do
  log "some little block" do
    log "teeny-tiny block" do
      "lots of love"
    end
    42
  end
  log "yet another block" do
    "I like Indian food!"
  end
  true
end

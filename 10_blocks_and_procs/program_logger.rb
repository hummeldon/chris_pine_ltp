def log (block_string, &block)
  puts "Beginning \"#{block_string}\"..."
  returned_value = block.call
  puts "...\"#{block_string}\" finished, returning: #{returned_value}"
end

log "outer block" do
  log "some little block" do
    5
  end
  log "yet another block" do
    "I like Thai food!"
  end
  false
end

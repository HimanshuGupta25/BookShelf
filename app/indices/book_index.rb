ThinkingSphinx::Index.define :book, :with => :active_record, :delta => true do
  # fields
    indexes title, :sortable => true
    indexes description
    indexes author
end

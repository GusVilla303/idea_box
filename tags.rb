# What is tagging?
# 
# An extra input on your forms, called "tags"
# Tell user "comma separated list of tags"
raw_tag_value = "tag1, tag2, tag3, tag4"  # => "tag1, tag2, tag3, tag4"

# get the tags from user submission
  # if wanted to support "tag1 ,tag2    ,   tag3"
  # then look at regexes, specifically String#split, whitespace matcher, splat matcher
tags = raw_tag_value.split(', ')  # => ["tag1", "tag2", "tag3", "tag4"]

# Store in db like normal

# iterate over tags
tags.each do |tag|  # => ["tag1", "tag2", "tag3", "tag4"]
  "<a #{tag}>"      # => "<a tag1>", "<a tag2>", "<a tag3>", "<a tag4>"
end                 # => ["tag1", "tag2", "tag3", "tag4"]

# put back into form
tags.join(', ')  # => "tag1, tag2, tag3, tag4"

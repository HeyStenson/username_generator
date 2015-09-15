# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
  if first == "" || last == ""
  	nil
  else 
  	first.gsub!(/[^A-Za-z]/, '')
  	last.gsub!(/[^A-Za-z]/, '')
  	first = first.strip
	last = last.split.join("").strip
	user_name = first[0] + last
	user_name = user_name.downcase 
  end
  user_name
end

def format_year
  nil
end

def build_username
  nil
end

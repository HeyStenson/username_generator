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

def format_year(year)
	if year.to_s.length != 4
		nil
	else 
	year = year.to_s
	year[2..3] 
  	end
end

def build_username(first, last, year, level = 0)
	base_username = format_name(first, last)
	user_year = format_year(year)
	username = base_username.strip + user_year
	if level === 1
		username = "seller-" + username
	elsif level === 2
		username = "manager-" + username
	elsif level === 3
		username = "admin-" + username
	else
		username
	end
end


$all_usernames = Hash.new
def generate_username(first, last, year, level = 0)
	new_user = build_username(first, last, year, level = 0)
	if !$all_usernames.has_key? new_user
		$all_usernames[new_user] = 0
		new_user
	else
		$all_usernames[new_user] = $all_usernames[new_user] + 1
		new_user = new_user + "_" + $all_usernames[new_user].to_s
		new_user
	end

end

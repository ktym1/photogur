def while_signed_in_as(user, my_method)
	puts user
	puts my_method
end

def post(tweet)
	return tweet
end

while_signed_in_as("joe", post("my tweet"))

# tweets = while_signed_as(user) do
# 	retrieve_list(list_name)
# end
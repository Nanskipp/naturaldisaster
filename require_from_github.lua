require_from_github = function(url, callback)
	HTTP:Get(url, function(res)
		if res.StatusCode ~= 200 then
			print("Error: " .. res.StatusCode)
			return
		else
			local git = res.Body:ToString()
			local obj = load(git)()
			callback(obj)
		end
	end)
end

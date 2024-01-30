require_from_github = function(url, callback)
	HTTP:Get(url, function(res)
		if res.StatusCode ~= 200 then
			print("Error: " .. res.StatusCode)
			return
		else
			obj = load(git)()
			callback(obj)
		end
	end)
end

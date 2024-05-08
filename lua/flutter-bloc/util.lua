local util = {}

util.camel_to_snake = function(camelCase)
	return camelCase:gsub("%u", "_%1"):gsub("^_", ""):lower()
end

util.init_cap = function(initCap)
	return (initCap:gsub("^%l", string.upper))
end

util.ends_with = function(str, ending)
	return ending == "" or str:sub(-#ending) == ending
end

util.terminate_path = function(path)
	if util.ends_with(path, "/") then
		return path
	end
	return path .. "/"
end

util.get_current_buffer_path = function()
	local buf_path = vim.fn.expand("%")
	local buf_directory = buf_path:match("(.*[/\\])")
	return buf_directory
end

return util

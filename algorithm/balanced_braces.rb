def braces(values)
  res = []
  values.each  do |value|
    while value.length > 0 do
      length = value.length
      value = value.gsub("()", "").gsub("[]", "").gsub("{}", "")
      break if (value.length == length)
    end

    if value.length == 0
      res.insert(-1, "YES") 
    else
      res.insert(-1, "NO") 
    end
  end
  return res
end

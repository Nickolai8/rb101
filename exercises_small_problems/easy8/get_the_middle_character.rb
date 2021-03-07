def center_of(str)
  str.size.odd? ? str[str.size/2] : str[str.size/2 - 1, 2]
end

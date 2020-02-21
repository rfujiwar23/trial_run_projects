def parts_sort(instruments)
  # return (not print!) a copy of instruments sorted alphabetically
  instruments.sort_by { |instrument| instrument.upcase }
end

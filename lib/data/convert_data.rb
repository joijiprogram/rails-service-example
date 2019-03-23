Zipcode.all.each do |zipcode|
  Zipcode.create(
    code: zipcode['id'],
    city: zipcode['city'],
    loc: zipcode['loc'],
    population: zipcode['pop'],
    state: zipcode['state']
  )
  zipcode.destroy
end
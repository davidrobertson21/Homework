def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, amount)
  pet_shop[:admin][:pets_sold] += 2
end

def stock_count(pet_shop)
  pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  pets_by_breed = []
  pets = pet_shop[:pets]
  for pet in pets
    if breed == pet[:breed]
      pets_by_breed.push(pet)
    end
  end
  return pets_by_breed
end
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] += cash #USE += TO ADD INTEGERS TO A HASH
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

def find_pet_by_name(pet_shop, pet_name)
  pets = pet_shop[:pets]
  for pet in pets
    if pet_name == pet[:name]
      return pet
    end
  end
      return nil #THIS RETURNS NIL IF THE FUNCTION LOOPS THE HASH AND DOESN'T FIND ANY PET WITH THE pet_name PASSED INTO THE FUNCTION. NEEDS TO BE OUT OF THE FOR LOOP
end    


def remove_pet_by_name(pet_shop, pet_name)
  pets = pet_shop[:pets]
  for pet in pets
    if pet_name == pet[:name]
     pet_shop[:pets].delete(pet)
    end
  end
      return nil #THIS RETURNS NIL IF THE FUNCTION LOOPS THE HASH AND DOESN'T FIND ANY PET WITH THE pet_name PASSED INTO THE FUNCTION. NEEDS TO BE OUT OF THE FOR LOOP
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet #USE SHOVEL TO ADD INTO AN ARRAY
end

def customer_pet_count(customer)
customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
  return 
end


# @pokemons.each do |pokemon|
#     json.set! pokemon.id do
        json.array! @pokemons, :id, :number, :name, :image_url, :captured
#     end
# end
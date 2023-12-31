# == Schema Information
#
# Table name: poke_moves
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint           not null
#  move_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PokeMove < ApplicationRecord
    validates :pokemon_id, :move_id, presence:true
    validates :move_id, uniqueness: { scope: [:pokemon_id, :move_id], message: "Pokemon cannot have the same move more than once"}

    belongs_to :move

    belongs_to :pokemon
end

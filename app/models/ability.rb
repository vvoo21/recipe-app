class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user (not logged in)

    # All users can see details of public recipes
    can :read, Recipe, public: true

    # Only the owners of the recipes can add a new food to a recipe
    can :create, Food, recipe: { user_id: user.id }

    # Only the owners of the inventory can delete it
    can :destroy, Inventory, user_id: user.id

    # Users could see the inventory details
    can :read, Inventory, user_id: user.id

    # Users can add new food
    can :create, Food
  end
end

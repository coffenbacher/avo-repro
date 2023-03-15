class CategoryResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  self.search_query = -> do
    scope.ransack(id_eq: params[:q], name_cont: params[:q], m: "or").result(distinct: false)
  end

  field :id, as: :id
  field :name, as: :text
  field :widgets, as: :has_many
  # add fields here
end

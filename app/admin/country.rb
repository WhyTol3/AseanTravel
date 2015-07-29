ActiveAdmin.register Country do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :description, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
    f.inputs 'Flag' do
      f.input :image
    end

    f.inputs 'Details' do
      f.input :name
      f.input :description, :label => '', as: :wysihtml5
    end
    actions
  end

end

ActiveAdmin.register Place do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :country_id, :name, :detail, :lat, :log
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
    f.inputs 'Country' do
      f.input :country
    end

    f.inputs 'Details' do 
      f.input :name
      f.input :detail
    end

    f.inputs 'Lat & Long' do 
      f.input :lat
      f.input :log
    end

    f.inputs 'Images' do
      f.has_many :place_images, heading: '', allow_destroy: true, new_record: true do |a|
        a.input :image, :as => :file, :label => 'image'
      end
    end

    f.inputs 'Souvenirs' do
      f.has_many :souvenirs, heading: '', allow_destroy: true, new_record: true do |a|
        a.input :name, :label => 'name'
        a.input :image, :as => :file, :label => 'image'
      end
    end

    # f.inputs do
    #   f.has_many :taggings, sortable: :position do |t|
    #     t.input :tag
    #   end
    # end
    # f.inputs do
    #   f.has_many :comment, new_record: 'Leave Comment' do |b|
    #     b.input :body
    #   end
    # end
    f.actions
  end


end

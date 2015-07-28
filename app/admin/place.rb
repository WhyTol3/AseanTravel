ActiveAdmin.register Place do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :country_id, :name, :detail, :lat, :log,
                place_images_attributes: [:image, :_destroy],
                souvenirs_attributes: [:name, :image, :_destroy],
                restaurants_attributes: [:name, :image, :description, :_destroy],
                hotels_attributes: [:name, :image, :description, :_destroy]
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


  index do
    selectable_column
    column "Country", :sortable => :country do |p|
      p.country.name
    end

    column "Name", :sortable => :name do |p|
      link_to p.name, admin_place_path(p)
    end

    column "created_at", :created_at
    column "updated_at", :updated_at

    actions
  end

  form do |f|
    f.inputs 'Country' do
      f.input :country
    end

    f.inputs 'Details' do
      f.input :name
      f.input :detail,  as: :wysihtml5
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

    f.inputs 'Hotels' do
      f.has_many :hotels, heading: '', allow_destroy: true, new_record: true do |a|
        a.input :image, :as => :file, :label => 'image'
        a.input :name, :label => 'name'
        a.input :description, :label => 'Description',  as: :wysihtml5
      end
    end

    f.inputs 'Restuarants' do
      f.has_many :restaurants, heading: '', allow_destroy: true, new_record: true do |a|
        a.input :image, :as => :file, :label => 'image'
        a.input :name, :label => 'name'
        a.input :description, :label => 'Description',  as: :wysihtml5
      end
    end

    f.inputs 'Souvenirs' do
      f.has_many :souvenirs, heading: '', allow_destroy: true, new_record: true do |a|
        a.input :name, :label => 'name'
        a.input :image, :as => :file, :label => 'image'
      end
    end

    f.actions
  end

  show do
    panel "Details" do
        attributes_table_for resource do
          row("Country") { resource.country.name }
          row("Name") { resource.name }
          row("Detail") { raw resource.detail }
          row("lat.") { resource.lat }
          row("log.") { resource.log }

          row("create"){resource.created_at}
          row("update"){resource.updated_at}
        end
      end
  end


end

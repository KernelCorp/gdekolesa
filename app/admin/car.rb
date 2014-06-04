ActiveAdmin.register Car do
  permit_params :name, :photo, :brand_id

  index do
    column :name
    column :photo do |auto|
      link_to auto.photo_file_name, auto.photo.url, target: '_blank'
    end
    column :brand
    default_actions
  end
  
  form do |f|
    f.inputs do
      f.input :name
      f.input :photo, as: :file
      f.input :brand, collection: Brand.all
    end
    f.actions
  end

  show do |auto|
    attributes_table do
      row :name
      row :photo do
        link_to auto.photo_file_name, auto.photo.url, target: '_blank'
      end
      row :brand
    end
  end
end

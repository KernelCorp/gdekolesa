ActiveAdmin.register Brand do
  permit_params :name, :logo

  index do
    column :name
    column :logo do |brand|
      link_to brand.logo_file_name, brand.logo.url, target: '_blank'
    end
    default_actions
  end
  
  form do |f|
    f.inputs do
      f.input :name
      f.input :logo, as: :file
    end
    f.actions
  end

  show do |brand|
    attributes_table do
      row :name
      row :logo do
        link_to brand.logo_file_name, brand.logo.url, target: '_blank'
      end
    end
  end
end

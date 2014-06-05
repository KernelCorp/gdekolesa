ActiveAdmin.register News do
  permit_params :title, :preview, :text, :image

  index do
    column :title
    column :preview
    column :image do |news|
      link_to news.image_file_name, news.image.url, target: '_blank'
    end
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :preview
      f.input :text
      f.input :image, as: :file
    end
    f.actions
  end

  show do |news|
    attributes_table do
      row :title
      row :image do
        link_to news.image_file_name, news.image.url, target: '_blank'
      end
      row :preview
      row :text
    end
  end
end

ActiveAdmin.register Album do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :img_url, :album_name, :artist_name, :rating,:image

   index do
    id_column
    column :img_url
    column :album_name
    column :artist_name
    column :rating
   end

   filter :img_url
   filter :album_name
   filter :artist_name

  #  form do |f|
  #   f.input :album_name,label:'Album'
  #   f.input :artist_name
  #   f.input :image,as: :file
  #   f.actions 
  #  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:img_url, :album_name, :artist_name, :rating]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

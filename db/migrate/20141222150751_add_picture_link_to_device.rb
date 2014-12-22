class AddPictureLinkToDevice < ActiveRecord::Migration
  def change
    add_column :devices, :picture_link, :string
  end
end

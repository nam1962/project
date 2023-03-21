class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    # TODO: your code here to create the posts table
    create_table :posts do |t|
      t.string    :title
      t.string    :url
      t.timestamps # add 2 columns, `created_at` and `updated_at`
    end
  end
end

ActiveAdmin.register_page "Dashboard" do
  content :title => proc{ I18n.t("active_admin.dashboard") } do
      panel "Recent Posts" do
        table_for Post.order("id desc").limit(15) do
          column :name do |post|
            link_to post.title, [:admin, post]
          end
          column "Author", :admin_user
          column :category
          column :created_at
        end
        strong (link_to "Show All Posts" , :admin_posts )
      end
      panel "Categories" do
        table_for Category.order("id desc").limit(15) do
          column :name do |category|
            link_to category.name, [:admin, category]
          end
          column :created_at
        end
        strong (link_to "Show All Categories" , :admin_categories )
      end
  end

  
end

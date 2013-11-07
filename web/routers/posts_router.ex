defmodule PostsRouter do
  use Dynamo.Router

  prepare do
    conn.fetch([:cookies, :params])
    conn.assign(:layout, "layout")
  end

  get "/:title" do
    render conn, "#{title}.html"
  end
end

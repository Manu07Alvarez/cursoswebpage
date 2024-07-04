defmodule AppWeb.PageController do
  use AppWeb, :controller

  def cursos(conn, %{"path" => path}) do
    content =
      ("priv/static/content.json"
      |> File.read!()
      |> Jason.decode!(keys: :atoms)
      |> Map.get(String.to_existing_atom(path)))
    render(conn, "cursos.html", content)
  end
end

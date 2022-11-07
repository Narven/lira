defmodule LiraWeb.KanbanBoard do
  use Surface.LiveView

  alias LiraWeb.Components.Card
  alias Surface.Components.LiveRedirect
  import LiraWeb.Gettext

  data(columns, :list, default: [])

  def mount(_, _, socket) do
    {
      :ok,
      socket
      |> assign(:columns, [
        %{title: gettext("Icebox"), tasks: [
          %{title: "First task", description: "Danish tart licorice candy lollipop chocolate bar."},
          %{title: "First task", description: "Danish tart licorice candy lollipop chocolate bar."},
          %{title: "First task", description: "Danish tart licorice candy lollipop chocolate bar."},
          %{title: "First task", description: "Danish tart licorice candy lollipop chocolate bar."},
          %{title: "First task", description: "Danish tart licorice candy lollipop chocolate bar."},
          %{title: "First task", description: "Danish tart licorice candy lollipop chocolate bar."},
          %{title: "First task", description: "Danish tart licorice candy lollipop chocolate bar."},
          %{title: "First task", description: "Danish tart licorice candy lollipop chocolate bar."},
        ]},
        %{title: gettext("Backlog"), tasks: []},
        %{title: gettext("ToDo"), tasks: [%{title: "First task", description: "Danish tart licorice candy lollipop chocolate bar."},]},
        %{title: gettext("Done"), tasks: []}
      ])
    }
  end

  def render(assigns) do
    ~F"""
    <div class="flex mt-2 p-2">
      <div class="bg-grey-800 w-1/12 flex flex-col">
        <LiveRedirect to="/">
          {gettext("Board")}
        </LiveRedirect>
        <LiveRedirect to="/">
          {gettext("Settings")}
        </LiveRedirect>
      </div>
      <div class={"w-11/12 grid grid-cols-#{length(@columns)} gap-2 flex flex-grow"}>
        {#for c <- @columns}
          <div class="flex flex-col">
            <h4 class="bg-gray-800 rounded-t p-2 font-bold text-white flex justify-between">
              {c.title} ({length(c.tasks)})
              <div class="font-bold text-xl shadow w-5 text-center rounded bg-white text-black cursor-pointer select-none">+</div>
            </h4>

            {#for t <- c.tasks}
              <Card title={t.title} description={t.description} />
            {/for}

          </div>
        {/for}

      </div>
    </div>
    """
  end
end

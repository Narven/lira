defmodule LiraWeb.Components.Card do
  @moduledoc """
  A sample component generated by `mix surface.init`.
  """
  use Surface.Component

  prop(title, :string, required: true)

  prop(description, :string)

  def render(assigns) do
    ~F"""
    <style>
      .card {
      @apply overflow-hidden bg-gray-300 flex flex-col flex-nowrap w-full rounded my-2 p-2 cursor-move select-none shadow-md;
      }
      .title {
      @apply font-bold mb-1;
      }
    </style>

    <div class="card">
      <h5 class="font-bold text-md mb-1">{@title}</h5>
      <p>{@description}</p>
    </div>
    """
  end
end

defmodule LiraWeb.Components.CardTest do
  use LiraWeb.ConnCase, async: true
  use Surface.LiveViewTest

  catalogue_test LiraWeb.Card
end

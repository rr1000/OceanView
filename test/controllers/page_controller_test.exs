defmodule OceanView.PageControllerTest do
  use OceanView.ConnCase

  test "GET /" do
    conn = get conn(), "/"
  end
end

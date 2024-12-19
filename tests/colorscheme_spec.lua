local Config = require("nekonight.config")
local Init = require("nekonight")

before_each(function()
  vim.o.background = "dark"
  vim.cmd.colorscheme("default")
  Config.setup()
  Init.styles = {}
end)

it("did prper init", function()
  assert.same({}, Init.styles)
  assert.same("default", vim.g.colors_name)
  assert.same("dark", vim.o.background)
end)

describe("loading respects vim.o.background", function()
  it("= dark", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("nekonight")
    assert.same("dark", vim.o.background)
    assert.same("nekonight-moon", vim.g.colors_name)
  end)

  it("= light", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("nekonight")
    assert.same("light", vim.o.background)
    assert.same("nekonight-day", vim.g.colors_name)
  end)

  it("= dark with night", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("nekonight-night")
    assert.same("dark", vim.o.background)
    assert.same("nekonight-night", vim.g.colors_name)
  end)

  it("= dark with day", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("nekonight-day")
    assert.same("light", vim.o.background)
    assert.same("nekonight-day", vim.g.colors_name)
  end)

  it("= light with night", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("nekonight-night")
    assert.same("dark", vim.o.background)
    assert.same("nekonight-night", vim.g.colors_name)
  end)

  it("= light with day", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("nekonight-day")
    assert.same("light", vim.o.background)
    assert.same("nekonight-day", vim.g.colors_name)
  end)

  it(" and switches to light", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("nekonight-night")
    vim.o.background = "light"
    assert.same("light", vim.o.background)
    assert.same("nekonight-day", vim.g.colors_name)
  end)

  it(" and switches to dark", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("nekonight")
    vim.o.background = "dark"
    assert.same("dark", vim.o.background)
    assert.same("nekonight-moon", vim.g.colors_name)
  end)

  it(" and remembers dark", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("nekonight-night")
    vim.o.background = "light"
    vim.o.background = "dark"
    assert.same("dark", vim.o.background)
    assert.same("nekonight-night", vim.g.colors_name)
  end)
end)

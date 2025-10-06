-- Definitions for possible components to render. Each defines:
--   ellipsis: whether to add an ellipsis when truncating the text
--   width: control the min, max and fill behavior of the component
--   text function: will be called for each item
--   highlight function: will be called only when the line appears on screen
---@type table
local components = {
  kind_icon = {
    ellipsis = false,
    text = function(ctx)
      return ctx.kind_icon .. ctx.icon_gap
    end,
    -- Set the highlight priority to 20000 to beat the cursorline's default priority of 10000
    highlight = function(ctx)
      return { { group = ctx.kind_hl, priority = 20000 } }
    end,
  },

  kind = {
    ellipsis = false,
    width = { fill = true },
    text = function(ctx)
      return ctx.kind
    end,
    highlight = function(ctx)
      return ctx.kind_hl
    end,
  },

  label = {
    width = { fill = true, max = 60 },
    text = function(ctx)
      return ctx.label .. ctx.label_detail
      --return require("colorful-menu").blink_components_text(ctx)
    end,
    highlight = function(ctx)
      -- label and label details
      local highlights = {
        { 0, #ctx.label, group = ctx.deprecated and "BlinkCmpLabelDeprecated" or "BlinkCmpLabel" },
      }
      if ctx.label_detail then
        table.insert(highlights, { #ctx.label, #ctx.label + #ctx.label_detail, group = "BlinkCmpLabelDetail" })
      end

      -- characters matched on the label by the fuzzy matcher
      for _, idx in ipairs(ctx.label_matched_indices) do
        table.insert(highlights, { idx, idx + 1, group = "BlinkCmpLabelMatch" })
      end

      return highlights
      --return require("colorful-menu").blink_components_highlight(ctx)
    end,
  },

  label_description = {
    width = { max = 30 },
    text = function(ctx)
      return ctx.label_description
    end,
    highlight = "BlinkCmpLabelDescription",
  },

  source_name = {
    width = { max = 30 },
    text = function(ctx)
      return ctx.source_name
    end,
    highlight = "BlinkCmpSource",
  },

  source_id = {
    width = { max = 30 },
    text = function(ctx)
      return ctx.source_id
    end,
    highlight = "BlinkCmpSource",
  },
}

return components

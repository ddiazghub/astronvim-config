-- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
return {
  init = { -- this table overrides highlights in all themes
    -- Normal = { bg = "#000000" },

    -- Set diagnostic highlight groups and colors:
    -- Error
    DiagnosticUnderlineError = {
      undercurl = true,
      bg = "#440000",
      sp = "#F38BA8",
    },

    -- Warning
    DiagnosticUnderlineWarn = {
      undercurl = true,
      bg = "#40400b",
      sp = "#F9E2AF",
    },

    -- Hint
    DiagnosticUnderlineHint = {
      undercurl = true,
      -- bg = "#39415E",
      sp = "#94E2D5",
    },

    -- Info
    DiagnosticUnderlineInfo = {
      undercurl = true,
      bg = "#384050",
      sp = "#89DCEB",
    },
  },
  astrotheme = { -- a table of overrides/changes when applying the astrotheme theme
    -- Normal = { bg = "#000000" },
  },
}

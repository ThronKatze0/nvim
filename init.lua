return {
  options = {
    opt = {
      conceallevel = 1, -- set vim.opt.conceallevel
      guicursor = "n-v-i-c:block-Cursor",
    },
  },
  mappings = {
    n = {
      ["<leader>ro"] = {
        "<cmd>CompilerOpen<cr>",
        desc = "Open compile window",
      },
      ["<leader>rr"] = {
        function()
          vim.cmd "CompilerStop"
          vim.cmd "CompilerRedo"
        end,
        desc = "Redo last compile",
      },
      ["<leader>rs"] = {
        "<cmd>CompilerToggleResults<cr>",
        desc = "Toggle compile results",
      },
      ["<leader>an"] = {
        function() require("neotest").run.run() end,
        desc = "Run nearest test",
      },
      ["<leader>ac"] = {
        function() require("neotest").run.run(vim.fn.expand "%") end,
        desc = "Run current file",
      },
      ["<leader>ad"] = {
        function() require("neotest").run.run { strategy = "dap" } end,
        desc = "Debug nearest test",
      },
      ["<leader>as"] = {
        function() require("neotest").run.stop() end,
        desc = "Stop nearest test",
      },
      ["<leader>aa"] = {
        function() require("neotest").run.attach() end,
        desc = "Attach to nearest test",
      },
    },
  },
},

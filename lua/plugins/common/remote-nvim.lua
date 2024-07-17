return {
  "amitds1997/remote-nvim.nvim",
  version = "*", -- Pin to GitHub releases
  dependencies = {
    "nvim-lua/plenary.nvim", -- For standard functions
    "MunifTanjim/nui.nvim", -- To build the plugin UI
    "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
  },
  config = function ()
    require("remote-nvim").setup({
         {
  -- Configuration for devpod connections
  devpod = {
    binary = "devpod", -- Binary to use for devpod
    docker_binary = "docker", -- Binary to use for docker-related commands
    ---@diagnostic disable-next-line:param-type-mismatch
  },
  -- Configuration for SSH connections
  ssh_config = {
    ssh_binary = "ssh", -- Binary to use for running SSH command
    scp_binary = "scp", -- Binary to use for running SSH copy commands
    ssh_config_file_paths = { "$HOME/.ssh/config" }, -- Which files should be considered to contain the ssh host configurations. NOTE: `Include` is respected in the provided files.

    ssh_prompts = {
      {
        match = "password:",
        type = "secret",
        value_type = "static",
        value = "",
      },
      {
        match = "continue connecting (yes/no/[fingerprint])?",
        type = "plain",
        value_type = "static",
        value = "",
      },
      -- There are other values here which can be checked in lua/remote-nvim/init.lua
    },
  },
  progress_view = {
    type = "popup",
  },



  -- Remote configuration
  remote = {
    app_name = "nvim", -- This directly maps to the value NVIM_APPNAME. If you use any other paths for configuration, also make sure to set this.
    -- List of directories that should be copied over
    copy_dirs = {
      -- What to copy to remote's Neovim config directory
      config = {
        base = vim.fn.stdpath("config"), -- Path from where data has to be copied
        dirs = "*", -- Directories that should be copied over. "*" means all directories. To specify a subset, use a list like {"lazy", "mason"} where "lazy", "mason" are subdirectories
        -- under path specified in `base`.
        compression = {
          enabled = false, -- Should compression be enabled or not
          additional_opts = {} -- Any additional options that should be used for compression. Any argument that is passed to `tar` (for compression) can be passed here as separate elements.
        },
      },
      -- What to copy to remote's Neovim data directory
      data = {
        base = vim.fn.stdpath("data"),
        dirs = {},
        compression = {
          enabled = true,
        },
      },
      -- What to copy to remote's Neovim cache directory
      cache = {
        base = vim.fn.stdpath("cache"),
        dirs = {},
        compression = {
          enabled = true,
        },
      },
      -- What to copy to remote's Neovim state directory
      state = {
        base = vim.fn.stdpath("state"),
        dirs = {},
        compression = {
          enabled = true,
        },
      },
    },
  },

  client_callback = function(port, _)
    require("remote-nvim.ui").float_term(("nvim --server localhost:%s --remote-ui"):format(port), function(exit_code)
      if exit_code ~= 0 then
        vim.notify(("Local client failed with exit code %s"):format(exit_code), vim.log.levels.ERROR)
      end
    end)
  end,

}
    })
  end,
}

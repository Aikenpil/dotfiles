# Dotfiles
These dotfiles are my currently used configurations for fish, neovim (lazyvim), git and a bash script to set it up for a arch linux environment

## Installation
For the versioning of my dotfiles i used the dotfiles manager **chezmoi**

To replicate my configs you should first install chezmoi using your preferred package manager, then make a backup of your configurations

Note that my .gitconfig will not work for you

```sh
chezmoi init https://github.com/Aikenpil/dotfiles.git && chezmoi apply
```

## List of features
### Fish shell
- **fzf**: Fzf plugin for Fish [fzf.fish](https://github.com/PatrickF1/fzf.fis)
- **autopair**:  Auto-complete matching pairs in the Fish command line [autopair.fish](https://github.com/jorgebucaran/autopair.fish)
- **sponge**: Clean fish history from typos automatically [sponge.fish](https://github.com/meaningful-ooo/sponge)
- **z**:  Pure-fish z directory jumping [z.fish](https://github.com/jethrokuan/z)
- **fish-async-prompt**: Make your prompt asynchronous to improve the reactivity [fish-async-prompt.fish](https://github.com/acomagu/fish-async-prompt)

### Neovim (Lazy Vim)
- **undo-glow**: Add animated glow/highlight effects to your neovim operation [undo-glow.nvim](https://github.com/y3owk1n/undo-glow.nvim)
- **twilight**: Dims inactive portions of the code you're editing [twilight.nvim](https://github.com/folke/twilight.nvim)
- **nvim-spider**: Move by subwords and skip insignificant punctuation [nvim-spider.nvim](https://github.com/chrisgrieser/nvim-spider)
- **telescope-undo**: A telescope extension to view and search your undo tree [telescope-undo.nvim](https://github.com/debugloop/telescope-undo.nvim)
- **live-rename**: A neovim plugin to live preview lsp renames [live-rename.nvim](https://github.com/saecki/live-rename.nvim)
- **auto-save**:  Extremely simple, small, auto save plugin for Neovim [auto-save.nvim](https://git.sr.ht/~nedia/auto-save.nvim)

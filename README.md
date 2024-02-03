# 🎣 Welcome to Mini Harpoon!

## ℹ️ Introduction
Welcome to Mini Harpoon! This plugin enhances your Vim navigation experience by allowing you to save and quickly navigate to multiple locations within your projects.

The plugin is taking inspiration from the (ThePrimeagen/harpoon)[https://github.com/ThePrimeagen/harpoon] plugin but it is written in Vim script witch makes it compatible with both `NVIM` and `VIM`!

## 📦 Installation
To install Mini Harpoon, simply add the following line to your Vim configuration file using your preferred plugin manager:

```
'YanivZalach/mini-harpoon'
```

- Example using Vim-Plug:

    ```vim
    Plug 'YanivZalach/mini-harpoon'
    ```

    Then, reload your Vim configuration and run `:PlugInstall`.

## 💡 Features
- Save your current file with ease using `:SaveLocation`.
- Navigate to saved locations quickly with `:GoToLocation {index}`.
- Open the file containing saved locations in a split window with `:OpenLocationFile`.

## ⚙️ Configuration

- Saving file with ease

```vim
" Adding Location to min-harpoon
nnoremap <leader>ha :SaveLocation<CR>
```

- Going to wonted location
```vim
" Going to location by index (start from 1 - easer with the keyboard)
nnoremap <leader>hg :GoToLocation
```

- Opening the editable file list
```vim
"Opening the file list
nnoremap <leader>hj :OpenLocationFile<CR>
```

- Opening the first 4 locations
```vim
nnoremap <leader>h1 :GoToLocation 1<CR>
nnoremap <leader>h2 :GoToLocation 2<CR>
nnoremap <leader>h3 :GoToLocation 3<CR>
nnoremap <leader>h4 :GoToLocation 4<CR>
```

## 📄 Documentation
For detailed instructions and usage information, refer to the [documentation](./doc/mini_harpoon.txt) file.

## 📝 License
This plugin is distributed under the MIT License. See the [LICENSE](./LICENSE) file for details.

## 🚧 Contributing
We welcome contributions! If you have any ideas or improvements, feel free to open an issue or submit a pull request.

## ❤️ Support
If you find this plugin helpful, consider starring the repository and spreading the word!

Happy navigating! 🌟

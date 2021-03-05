[mit-badge]: https://img.shields.io/badge/License-MIT-yellow.svg
[mit]:       http://opensource.org/licenses/MIT

[![][mit-badge]][mit]

# vim-syntax-highlighters

Orfeo and Dataline syntax highlighters for Vim.

Provides syntax highlighting for files ending in .orfeo and .dataline

http://orfeo.org

https://www.vim.org/

## Installation

The following installations are for macOS. On other systems, you should modify
the path to Vim to reflect its proper placement.

### Vim

1. `cd ~/.vim`
2. `mkdir -p pack/orfeo/start`
3. `cd pack/orfeo/start`
4. `git clone https://github.com/orfeolang/vim-syntax-highlighters.git syntax-highlighters`

### Neovim

1. `cd ~/.config/nvim`
2. `mkdir -p pack/orfeo/start`
3. `cd pack/orfeo/start`
4. `git clone https://github.com/orfeolang/vim-syntax-highlighters.git syntax-highlighters`

## Tests

The following files serve as syntax highlighting tests.

`test/test.orfeo`  
`test/test.dataline`

Open them in Vim to see if their syntax is highlighted correctly.

## Copyright

Copyright (c) 2019-2020, <a href="https://github.com/pelevesque">Pierre-Emmanuel Lévesque</a>

## License

MIT

<div align="center">
  <sub>Built with ❤︎ by <a href="https://github.com/pelevesque">Pierre-Emmanuel Lévesque</a>
</div>

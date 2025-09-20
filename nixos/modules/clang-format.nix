{ pkgs, ... }:

{
  home.file.".clang-format".text = ''
    ---
    BasedOnStyle: Google
    IndentWidth: 4
    ColumnLimit: 110
  ''
}

```sh
nix repl
:lf .
outputs.diskoConfigurations
```
Should not `incl` `cell1`
```sh
error:
       … while calling the 'head' builtin

         at /nix/store/yf26s7734ql7q05zlq6nq4y5q3rjyhj7-source/lib/attrsets.nix:720:11:

          719|         || pred here (elemAt values 1) (head values) then
          720|           head values
             |           ^
          721|         else

       … while calling the 'foldl'' builtin

         at /nix/store/yf26s7734ql7q05zlq6nq4y5q3rjyhj7-source/lib/trivial.nix:63:8:

           62|     let reverseApply = x: f: f x;
           63|     in builtins.foldl' reverseApply val functions;
             |        ^
           64|

       (stack trace truncated; use '--show-trace' to show the full trace)

       error: evaluation aborted with the following error message: '
       Missing Cell Block: /nix/store/2wslbzzcd5p76nmbhvs68na2xnc18p16-incl/cell1
       Containing Flake:   /nix/store/gykqym3mvv5ya0w6jd1h0fkqssnfi19d-source/flake.nix

       This Cell must provide at least one Cell Block.
       In this project, the Cell Blocks may be:
         - diskoConfigurations


       For Block diskoConfigurations of type diskoConfiguration create: 2wslbzzcd5p76nmbhvs68na2xnc18p16-incl/cell1/diskoConfigurations.nix or 2wslbzzcd5p76nmbhvs68na2xnc18p16-incl/cell1/diskoConfigurations/default.nix

       When done, don't forget:
         `git add 2wslbzzcd5p76nmbhvs68na2xnc18p16-incl/cell1'
       '

```

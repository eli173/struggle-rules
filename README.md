

# Struggle Rules
The rules for the game Struggle will eventually be contained in rules.pdf.

Currently this file demonstrates how the boards generated from the LaTeX package look, please take a peek at it.


## struggle.sty
This is the style file that provides board-drawing utilities. To use, just put this file in whichever directory you're compiling your LaTeX document from and add `\usepackage{struggle}` to the preamble.

The package provides the `struggleboard` environment. When using this environment, you may pass a scaling factor as an argument. This environment places you in a Tikz environment, so you may put additional Tikz commands inside the environment. You do not need any Tikz knowledge to use this package though. The `struggleboard` environment provides three commands for drawing on the board:

#### `\piece{node}{color}`
This command takes a node and a color and places a piece on that node. All standard LaTeX colors are valid.

#### `\highlight{node}{color}`
This command does the same thing as `\piece`, but doesn't draw the outline of the piece, and the color drawn will be at 50% opacity

#### `\move{node1}{node2}`
This move puts an arrow pointing from `node1` to `node2` on the board

### Nodes
The nodes available to pass to the three commands above represent places on the struggle board. The nodes are labeled by a letter representing which row it is on (top to bottom, a to m), and a number representing which place in the row it is (left to right). Be warned that all rows do not have the same combinations of letters and numbers. For instance, the second row only has two nodes, so the only nodes on that row are `b1` and `b2`. The sixth row would be labeled `f`, and since there are six spots on that row, the nodes `f1` through `f6` are all valid. You may want to note that the seventh row has only five nodes, and the eighth has six, and the length of the rows decrease from there until the end of the board, which is row `m` which has only `m1`.


### Example Code

```TeX
\begin{struggleboard}[0.75]
    \piece{e2}{yellow};
    \piece{f3}{green};
    \piece{g4}{white};
    \highlight{g5}{purple};
    \move{e2}{g3};
    \move{g3}{g5};
\end{struggleboard}
```

This would generate this image:

![img.png from repository](https://raw.githubusercontent.com/eli173/struggle-rules/master/img.png)

# Ubuntu默认终端尺寸

24x80

# 示例

```python
import curses

mainScreen = curses.initscr()

maxRows = curses.LINES
maxCols = curses.COLS

print(maxRows)
print(maxCols)

curses.endwin()
```

log

```
24
  80
```

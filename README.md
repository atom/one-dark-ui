## One dark UI theme

A dark UI theme that adjusts to most Syntax themes.

![one-dark-ui](https://cloud.githubusercontent.com/assets/378023/6979859/96e416e8-da24-11e4-995c-00dcd84c276d.png)

> The font used in the screenshots is [Fira Mono](https://github.com/mozilla/Fira). Icons by [file-icons](https://atom.io/packages/file-icons).

### Combine with other Syntax themes

There is a matching [Syntax theme](https://atom.io/themes/one-dark-syntax), but most other Syntax themes work fine as well.

![one-dark-ui + sepia](https://cloud.githubusercontent.com/assets/378023/6979865/af2d59da-da24-11e4-8ab6-974c50534b86.png)
> One dark + [Sepia](https://atom.io/themes/sepia-syntax)

![one-dark-ui chester](https://cloud.githubusercontent.com/assets/378023/6979876/cd0fca64-da24-11e4-9006-4f7e1ff80cad.png)
> One dark + [Chester](https://atom.io/themes/chester-atom-syntax)

### Install

This theme is installed by default with Atom and can be activated by going to the __Settings > Themes__ section and selecting "One Dark" from the __UI Themes__ drop-down menu.

### Settings

In the theme settings you can switch between 3 __Layout Modes__:

1. `Auto` (default) - In Auto mode, the UI and font size will automatically change based on the window size.
2. `Compact` - The UI stays compact to leave more space for the editor.
3. `Spacious` - The UI is expanded, giving some breathing room.

As well as change the __Font Size__ to scale the whole UI up or down.

### Customize

It's also possible to resize only certain areas by adding the following to your `styles.less` (Use the DevTools to find the right selectors):

```css
.theme-one-dark-ui {
  .tab-bar { font-size: 18px; }
  .tree-view { font-size: 14px; }
  .status-bar { font-size: 12px; }
}
```

### FAQ

__Why do the colors change when I switch Syntax themes?__
This UI theme uses the same background color as the choosen Syntax theme. In case that Syntax theme has a light background color, it only uses its hue, but otherwise stays dark. This lets you use dark-light combos.

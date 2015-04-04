## One light UI theme

A light UI theme that adjusts to most Syntax themes.

![one-light-ui](https://cloud.githubusercontent.com/assets/378023/6980108/fb10eec2-da27-11e4-9e52-7f4115044a97.png)

> The font used in the screenshots is [Fira Mono](https://github.com/mozilla/Fira). Icons by [file-icons](https://atom.io/packages/file-icons).

### Combine with other Syntax themes

There is a matching [Syntax theme](https://atom.io/themes/one-light-syntax), but most other Syntax themes work fine as well.

![one-light-ui + sepia](https://cloud.githubusercontent.com/assets/378023/6980110/fc59aca6-da27-11e4-963c-7ecd8400b2c0.png)
> One light + [Sepia](https://atom.io/themes/sepia-syntax)

![one-light-ui + chester](https://cloud.githubusercontent.com/assets/378023/6980109/fb13e384-da27-11e4-8324-8d8ee2de5ad5.png)
> One light + [Chester](https://atom.io/themes/chester-atom-syntax)

### Install

This theme is installed by default with Atom and can be activated by going to the __Settings > Themes__ section and selecting "One Light" from the __UI Themes__ drop-down menu.

### Customize

You can scale the whole UI up or down by adding this to your `styles.less`:

```css
.theme-one-light-ui { font-size: 14px; }
```

It's also possible to only change certain areas (Use the DevTools to find the right selectors):

```css
.theme-one-light-ui {
  .tab-bar { font-size: 18px; }
  .tree-view { font-size: 14px; }
  .status-bar { font-size: 12px; }
}
```

### FAQ

__Why do the colors change when I switch Syntax themes.__
This UI theme uses the same background color as the choosen Syntax theme. In case that Syntax theme has a dark background color, it only uses its hue, but otherwise stays light. This lets you use light-dark combos.

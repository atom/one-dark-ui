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

### Customize

You can scale the whole UI up or down by adding this to your `styles.less`:

```css
.theme-one-dark-ui { font-size: 14px; }
```

It's also possible to only change certain areas (Use the DevTools to find the right selectors):

```css
.theme-one-dark-ui {
  .tab-bar { font-size: 18px; }
  .tree-view { font-size: 14px; }
  .status-bar { font-size: 12px; }
}
```

### FAQ

__Why do the colors change when I switch Syntax themes.__
This UI theme uses the same background color as the choosen Syntax theme. In case that Syntax theme has a light background color, it only uses its hue, but otherwise stays dark. This lets you use dark-light combos.

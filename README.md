## ONE dark UI theme

A dark UI theme that adjusts to most Syntax themes.

![one-dark-ui](https://cloud.githubusercontent.com/assets/378023/6241915/00f2457a-b769-11e4-8230-6632668354b1.png)

There is a matching [Syntax theme](https://atom.io/themes/one-dark-syntax), but most other Syntax themes work fine as well.

![one-dark-grid](https://cloud.githubusercontent.com/assets/378023/6241914/00ef2c8c-b769-11e4-945a-bd7333dcf795.png)

### Install

This theme is installed by default with Atom and can be activated by going to the __Settings > Themes__ section and selecting "One Dark" from the __UI Themes__ drop-down menu.

### Customize

You can scale the whole UI up or down by adding this to your `styles.less`:

```css
html { font-size: 14px; }
```

It's also possible to only change certain areas (Use the DevTools to find the right selectors):

```css
.tab-bar { font-size: 18px; }
.tree-view { font-size: 14px; }
.status-bar { font-size: 12px; }
```

### FAQ

__Why do the colors change when I switch Syntax themes.__
This UI theme uses the same background color as the choosen Syntax theme. In case that Syntax theme has a light background color, it only uses its hue, but otherwise stays dark. This lets you use dark-light combos.

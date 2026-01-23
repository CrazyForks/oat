+++
title = "Grid"
weight = 170
description = "12-column responsive grid using container queries and CSS flex."
+++

A classic 12-column grid using flexbox. Use `.container`, `.row`, and `.col` classes. Column widths use `.col-{n}` and responsive variants like `.col-medium-{n}`.

{% demo() %}
```html
<div class="container" style="background: var(--muted); padding: var(--space-4); border-radius: var(--radius);">
  <div class="row">
    <div class="col col-12" style="background: var(--primary); color: var(--primary-foreground); padding: var(--space-4); border-radius: var(--radius);">
      col-12
    </div>
    <div class="col col-12" style="background: var(--primary); color: var(--primary-foreground); padding: var(--space-4); border-radius: var(--radius);">
      col-12
    </div>
    <div class="col col-12" style="background: var(--primary); color: var(--primary-foreground); padding: var(--space-4); border-radius: var(--radius);">
      col-12
    </div>
  </div>
</div>
```
{% end %}

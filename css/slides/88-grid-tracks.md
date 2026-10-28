---
layout: pageBarTwoCols
class: content-offset
---

# Grid Tracks — Columns & Rows

::left::

**`grid-template-columns`**

<div>
  <img src="/images/grid-template-columns.svg" alt="A 300px grid with columns of 200px and 100px and two 60px rows." class="block mx-auto w-full" style="max-height: 25vh; object-fit: contain;" />
</div>

```css
.container {
    display: grid;
    width: 300px;
    grid-template-columns: 2fr 1fr;
    grid-template-rows: 60px 60px;
}
```

::right::

**`grid-template-rows`**

<div>
  <img src="/images/grid-template-rows.svg" alt="A grid with two 150px columns and rows of 40px and 80px." class="block mx-auto w-full" style="max-height: 25vh; object-fit: contain;" />
</div>

```css
.container {
    display: grid;
    width: 300px;
    grid-template-columns: 150px 150px;
    grid-template-rows: 40px 80px;
}
```

::below::

- Each value defines one track (a column or a row).
- `fr` distributes available track space proportionally when intrinsic constraints do not intervene.

<style>
.slidev-code {
  font-size: 0.75rem !important;
  line-height: 1.2 !important;
}
</style>

<!--
- Both snippets contain declarations for a grid container with four empty grid items, no gap, no padding and no border affecting track sizes. The illustrations show track boundaries rather than item borders.
- On the left, read `grid-template-columns: 2fr 1fr` from left to right. The available 300px is divided into three equal shares of 100px. The first column receives two shares (200px), the second receives one (100px).
- The two rows are each 60px high. The dashed horizontal line separates them; color highlights the columns.
- On the right, read `grid-template-rows: 40px 80px` from top to bottom. The first row is 40px high and the second is 80px high. Both columns are 150px wide. The dashed vertical line separates them; color highlights the rows.
- Ask attendees what happens if the left example changes to `grid-template-columns: 1fr 1fr` (both columns become 150px) or the right example reverses the row values.
- Fixed tracks and gaps reduce the space available for fractional tracks. Intrinsic minimum sizes can also affect the distribution when items contain content.
-->

# Quiz 02 — Answers

1. **Physical vs. logical:** `padding-left` always applies to the physical left side. `padding-inline-start` applies to the **start of the inline axis**, which depends on writing direction and writing mode. Logical properties adapt when text layout changes.

2. **Horizontal writing:** With `direction: ltr`, `padding-inline-start` applies to the **left**. With `direction: rtl`, it applies to the **right**.

3. **Block axis in horizontal writing:** `padding-block-start` is the **top**, and `padding-block-end` is the **bottom**, for `writing-mode: horizontal-tb`.

4. **Task Manager declaration:**

   ```css
   .task-card {
     padding-inline-start: 16px;
   }
   ```

   This places padding on the start side of the inline direction: left for LTR and right for RTL in horizontal writing.

5. **When switching to `vertical-rl`:** The **inline axis becomes vertical**, with its start at the top for the usual `direction: ltr`, so `padding-inline-start` applies to the **top**. The **block axis runs right to left**, so `padding-block-start` applies to the **right**. In `horizontal-tb` with LTR text, those properties would apply to the **left** and **top**, respectively. The physical sides can change because logical properties follow the writing axes.

**Teaching note:** `direction` can also affect inline-start/inline-end in vertical writing. Question 5 assumes `direction: ltr` to make the physical-side mapping unambiguous.

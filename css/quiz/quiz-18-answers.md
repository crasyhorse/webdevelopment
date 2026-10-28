# Quiz 18 — Answers

## 1. Undeclared `var(--missing)` without fallback

The declaration becomes **invalid at computed-value time**. The used property (e.g. `background`) does not get the declaration's value; it falls back to its inherited value, or to its initial value if nothing is inherited. The rest of the rule block still applies.

## 2. When is the fallback used?

When the custom property is **not defined** at that element, or when its value is **invalid at computed-value time** for the property it is substituted into. The fallback is not a general type check — it is consulted during substitution.

## 3. Declaration sites and conflicts

A custom property can be declared on **any selector**, like any other property. Conflicts between declarations resolve through the **normal cascade**: origin, specificity and order. There are no special rules for `--*` names.

## 4. Why does a `:root` token reach every element?

Because custom properties **inherit**. `:root` matches `<html>`, the ancestor of every element, so every element computes the inherited value unless it (or an ancestor in between) re-declares it.

## 5. One component, different accent, no color modifiers

Declare the accent token **on the component block** (e.g. `.task-card--urgent { --accent: … }` or on a wrapper). The component's internal rules keep using `var(--accent)`; the re-declaration re-scopes the token for that subtree only.

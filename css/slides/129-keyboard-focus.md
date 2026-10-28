---
layout: pageBarTwoCols
class: content-offset
---

# Keyboard Navigation & Focus

::left::

Mouse: the whole page at a glance — point anywhere.

<div>
  <img src="/images/focus-mouse-overview.svg" alt="The full Task Manager page brightly lit, with a mouse cursor pointing at the Add task button." class="block mx-auto w-full" style="max-height: 39vh; object-fit: contain;" />
</div>

::right::

Keyboard: one control at a time

<div>
  <img src="/images/focus-keyboard-flashlight.svg" alt="The same page darkened except for a flashlight circle around the Add task button, which shows a bright focus ring." class="block mx-auto w-full" style="max-height: 39vh; object-fit: contain;" />
</div>

::below::

- Keyboard users move through focusable elements in **DOM order** with `Tab` and `Shift+Tab`.
- Without a visible focus ring, they are lost.

<!--
- Mouse users see the whole page at once; keyboard users experience it one control at a time. The focus ring is their only answer to "where am I?".
- Enter or Space activates native controls; a styled div without a role is never reachable by Tab at all.
- Never remove outlines without an equally visible replacement; :focus-visible shows the ring for keyboard input but not for mouse clicks.
- Check that sticky headers or overflow: hidden do not clip or cover the focused element. See WCAG 2.4.7 Focus Visible.
-->

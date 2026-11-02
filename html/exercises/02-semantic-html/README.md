# Exercise 02 — Refactor the Task Manager with Semantic HTML

## Goal

Improve the **Task Manager** page from Exercise 01 by giving its structure clearer meaning through semantic HTML.

The page already contains the required content. Your task is to **refactor its structure**, not redesign the application or add new functionality. Think about what each part of the document represents and choose HTML elements that communicate that purpose.

## Requirements

Start with your completed Task Manager page from Exercise 01.

- Examine the existing `<div>` containers. Replace them with suitable **semantic HTML elements** wherever their purpose can be expressed more clearly.
- Organize the page so that its introduction, navigation, and primary task content have meaningful structure.
- Keep the **Task Manager** heading, introductory text, **Tasks** link, task list, and form. Preserve the original text and list entries.
- Keep the **Tasks** link working as an in-page link to the task area.
- Review the form's text input. Give it an appropriate identifier and a name that describes the submitted value.
- Give the **Tasks** heading its own identifier so it can also be addressed directly.

## Design considerations

Before changing an element, ask yourself: **What purpose does this part of the page serve?** Choose an element for its meaning, not its default appearance.

Some questions to guide your decisions:

- Which content introduces the application, and which content is its main focus?
- Is the **Tasks** link part of a meaningful navigation area?
- Does the task area represent a distinct section of the document?
- Is a generic container still necessary, or can a more descriptive element take its place?
- How do headings and in-page links help readers navigate the document?

You can consult the HTML element reference if you are unsure which elements fit. Be prepared to explain your choices.

Do not introduce CSS, JavaScript, frameworks, or additional application behavior. Keep the form as a structural prototype; the **Add task** button does not need to work yet. More detailed accessibility improvements are covered in the next lesson.

## Check your result

Open the updated document in a browser and inspect it with Developer Tools.

- Does the page still contain the same content as Exercise 01?
- Are the structural elements meaningful when you read the DOM tree?
- Does the **Tasks** link still navigate to the correct part of the page?
- Does the task input have an `id` and `name`?
- Can you explain why you chose each semantic element?

**Expected result:** The same simple, unstyled Task Manager, now organized using meaningful HTML elements and ready for the next exercise on accessibility.

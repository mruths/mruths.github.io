---

layout: ae_post
use_footer: true

title:
  text: This is the (optional) Page Header
  image:
    src: /images/books_main/Mitali_Books.png 

content_elements:
  - header: This is a section header
  - text: |
        This is some text. The thing that follows is a `book_cards` list. It can contain an arbitrary list of your books
  - book_cards:
    - book_id: is1
    - book_id: ac2
    - book_id: pd4
    card_set_id: books_example
  - text: |
        Below is an `image_cards` element. We can put an arbitrary number of images together, spaced equally in as many rows as you want. Each image can link to a different place.
  - image_cards:
      - image:
          src: /images/books_lander/Archie.png
        url: "#ac"
      - image:
          src: /images/books_lander/Party.png
        url: "#pd"
      - image:
          src: /images/books_lander/Scouts.png
        url: "#is"
    card_pct_size: 30
    open_urls_in_new_tab: false
  - text: Next is a list, which contains a list of items.
  - list:
      - First thing
      - Second thing
      - Third thing
  - header: Here's another Section Header
  - subheader: This is the subheader text.
  - text: What follows is a callout, which is pretty cool.
  - callout: In the midst of winter, I found there was, within me, an invincible summer.
  - text: And finally, we can add a button for some action. This one takes you to McGill.
  - button:
      text: Click me
      url: http://www.mcgill.ca

---

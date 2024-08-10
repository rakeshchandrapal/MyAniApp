# MyAniApp

MyAniApp (I cant think of a name) is an Android, Windows, Linux, Web (expect more bugs) Anilist client.

# Features

- Home page similar the site

  - Anime/Manga thats your currently watching/reading
  - Recent forum activity
  - Recent reviews

- Media List

  - Browse your lists
  - A media editor

- Activities

  - See Following and Global
  - Write your own posts

- Forums support similar to the site

  - Reply to comments
  - Go to pages quickly

- Markdown support (sometimes it looks broken)

# Dev

Some commands to run.

When added/editing `.graphql` files run `dart run build_runner watch --delete-conflicting-outputs`

Kinda of file based routing but I don't feel like working too much on it. Run `dart run scripts/routes.dart home=/home/overview` to generate new routes

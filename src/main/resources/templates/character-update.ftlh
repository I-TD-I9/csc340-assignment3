<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${title}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/styles.css">
  </head>
  <body>
    <nav class="navbar bg-dark navbar-dark">
      <div class="container">
        <a class="navbar-brand" href="/characters">Mythic Atlas</a>
        <div class="navbar-nav flex-row gap-3">
          <a class="nav-link" href="/characters">Home</a>
          <a class="nav-link" href="/characters/about">About</a>
          <a class="nav-link" href="/characters/add">Add a Character</a>
        </div>
      </div>
    </nav>
    <header class="py-4 border-bottom">
      <div class="container">
        <h1 class="display-6 fw-bold">${title}</h1>
      </div>
    </header>
    <main class="py-5">
      <div class="container">
        <form class="row g-3" method="post" action="/characters/update/${character.characterId?c}">
          <div class="col-md-6">
            <label class="form-label" for="charName">Character Name</label>
            <input class="form-control" id="charName" name="name" type="text" value="${character.name}" required>
          </div>
          <div class="col-md-6">
            <label class="form-label" for="charUniverse">Universe</label>
            <input class="form-control" id="charUniverse" name="universe" type="text" value="${character.universe}" required>
          </div>
          <div class="col-md-6">
            <label class="form-label" for="charSpecies">Species</label>
            <input class="form-control" id="charSpecies" name="species" type="text" value="${character.species}" required>
          </div>
          <div class="col-md-6">
            <label class="form-label" for="charImage">Image URL</label>
            <input class="form-control" id="charImage" name="imageUrl" type="url" value="${(character.imageUrl)!''}">
          </div>
          <div class="col-12">
            <label class="form-label" for="charDescription">Short Description</label>
            <textarea class="form-control" id="charDescription" name="description" rows="4" required>${character.description}</textarea>
          </div>
          <div class="col-12">
            <button class="btn btn-primary" type="submit">Update Character</button>
            <a href="/characters/${character.characterId?c}" class="btn btn-outline-secondary ms-2">Cancel</a>
          </div>
        </form>
      </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

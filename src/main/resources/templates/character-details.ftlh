<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${title}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar bg-dark navbar-dark">
      <div class="container">
        <a class="navbar-brand" href="/characters">Mythic Atlas</a>
        <div class="navbar-nav flex-row gap-3">
          <a class="nav-link" href="/characters">Home</a>
          <a class="nav-link active" href="#">Details</a>
          <a class="nav-link" href="/characters/add">Add a Character</a>
        </div>
      </div>
    </nav>

    <header class="py-4 border-bottom">
      <div class="container">
        <h1 class="display-6 fw-bold">${character.name}</h1>
      </div>
    </header>

    <main class="py-5">
      <div class="container">
        <div class="row g-4 align-items-start">
          <div class="col-lg-6">
            <img src="${(character.imageUrl?has_content)?then(character.imageUrl, '/placeholder.png')}" alt="${character.name}" class="img-fluid rounded-3 border">
          </div>
          <div class="col-lg-6">
            <h2 class="h4 mb-3">Profile Summary</h2>
            <ul class="list-unstyled mb-4">
              <li><strong>Universe:</strong> ${character.universe}</li>
              <li><strong>Species:</strong> ${character.species}</li>
            </ul>
            <h3 class="h5">Backstory</h3>
            <p>${character.description}</p>
            <div class="mt-4 d-flex gap-2">
              <a href="/characters/updateForm/${character.characterId?c}" class="btn btn-warning">Edit</a>
              <a href="/characters/delete/${character.characterId?c}" class="btn btn-danger">Delete</a>
              <a href="/characters" class="btn btn-outline-secondary">Back to All</a>
            </div>
          </div>
        </div>
      </div>
    </main>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

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
          <a class="nav-link active" href="/characters">Home</a>
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
        <div class="row g-4">
          <#list characterList as character>
          <div class="col-md-4">
            <div class="card h-100">
              <img src="${(character.imageUrl?has_content)?then(character.imageUrl, '/placeholder.png')}" class="card-img-top" alt="${character.name}" style="height: 200px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title">${character.name}</h5>
                <p class="card-text">${character.universe}</p>
                <a href="/characters/${character.characterId?c}" class="btn btn-outline-primary">View Details</a>
              </div>
            </div>
          </div>
          </#list>
        </div>
      </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

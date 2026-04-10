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
          <a class="nav-link" href="/characters/add">Add a Character</a>
        </div>
      </div>
    </nav>
    <main class="py-5">
      <div class="container">
        <div class="alert alert-danger" role="alert">
          <h4 class="alert-heading">${title}</h4>
          <p>${errorMessage}</p>
          <a href="/characters" class="btn btn-primary">Go Back Home</a>
        </div>
      </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

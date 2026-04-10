<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Character Gallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar bg-dark navbar-dark">
      <div class="container">
        <a class="navbar-brand" href="/characters/all">Mythic Atlas</a>
        <div class="navbar-nav flex-row gap-3">
          <a class="nav-link active" href="/characters/all">Home</a>
          <a class="nav-link" href="/characters/add">Add a Character</a>
        </div>
      </div>
    </nav>

    <header class="py-4 border-bottom">
      <div class="container">
        <div class="row g-3 align-items-center">
          <div class="col-lg-7">
            <h1 class="display-6 fw-bold mb-1">Mythic Gallery</h1>
            <p class="mb-0 text-muted">Heroes from multiple mythologies</p>
          </div>
          <div class="col-lg-5">
            <h2 class="h6 mb-2">Search</h2>
            <form class="row g-2">
              <div class="col-12">
                <input type="text" class="form-control" placeholder="Search by name or category">
              </div>
              <div class="col-12">
                <select class="form-select">
                  <option selected>Filter by category</option>
                  <option>King</option>
                  <option>Demigod</option>
                  <option>Deity</option>
                  <option>Trickster</option>
                </select>
              </div>
              <div class="col-12">
                <button class="btn btn-primary w-100" type="button">Search</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </header>

    <main class="py-5">
      <div class="container">
        <h2 class="h4 mb-3">Featured Characters</h2>
        
        <div class="row g-4">
          <#list characterList as character>

          <div class="col-md-6 col-lg-4">
            <div class="card h-100">
              <img src="https://gettherapybirmingham.com/wp-content/uploads/Gilgamesh-and-Jungian-Psychology-e1728527272580.webp" class="card-img-top" alt="Gilgamesh">
              <div class="card-body">
                <h5 class="card-title">${character.name}</h5>
                <p class="card-text">Universe: ${character.universe} | Species: ${character.species}</p>
                <p class="card-text">Discription: ${character.description}</p>
                <a class="btn btn-outline-dark btn-sm" href="/characters/${character.characterId}">View details</a>
              </div>
            </div>
          </div>

          </#list>

          <div class="col-md-6 col-lg-4">
            <div class="card h-100">
              <img src="https://gettherapybirmingham.com/wp-content/uploads/Gilgamesh-and-Jungian-Psychology-e1728527272580.webp" class="card-img-top" alt="Gilgamesh">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text">Universe: Epic of Gilgamesh | Role: King of Uruk | Power: Two-thirds divine | Species: Demigod</p>
                <p class="card-text">A mighty ruler who seeks fame, friendship, and the secret of eternal life.</p>
                <a class="btn btn-outline-dark btn-sm" href="details.html">View details</a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="card h-100">
              <img src="https://www.historydefined.net/wp-content/uploads/2023/12/heracles.jpg" class="card-img-top" alt="Heracles">
              <div class="card-body">
                <h5 class="card-title">Heracles</h5>
                <p class="card-text">Universe: Greek Myth | Role: Demigod Hero | Power: Twelve labors | Species: Demigod</p>
                <p class="card-text">Known for legendary strength and feats that earned him a spot among the gods.</p>
                <a class="btn btn-outline-dark btn-sm" href="details.html">View details</a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="card h-100">
              <img src="https://www.theparisreview.org/blog/wp-content/uploads/2019/04/athena_enkelados_louvre_ca3662.jpg" class="card-img-top" alt="Athena">
              <div class="card-body">
                <h5 class="card-title">Athena</h5>
                <p class="card-text">Universe: Greek Myth | Role: Goddess of Wisdom | Power: Strategy and craft | Species: Deity</p>
                <p class="card-text">Patron of heroes, she guides with insight, planning, and skilled hands.</p>
                <a class="btn btn-outline-dark btn-sm" href="details.html">View details</a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="card h-100">
              <img src="https://norsespirit.com/cdn/shop/files/odin-6679.webp" class="card-img-top" alt="Odin">
              <div class="card-body">
                <h5 class="card-title">Odin</h5>
                <p class="card-text">Universe: Norse Myth | Role: All-Father | Power: Wisdom and runes | Species: Deity</p>
                <p class="card-text">Seeker of knowledge who sacrifices for insight and watches over heroes.</p>
                <a class="btn btn-outline-dark btn-sm" href="details.html">View details</a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="card h-100">
              <img src="https://images.ctfassets.net/m3d2dwoc9jko/2BMQz4nJ3n6SQOFqvr6aiB/55b176a1d04cda1e6d5bdd6a3bea1c71/amaterasu-japanese-goddess-of-the-sun.jpg" class="card-img-top" alt="Amaterasu">
              <div class="card-body">
                <h5 class="card-title">Amaterasu</h5>
                <p class="card-text">Universe: Japanese Myth | Role: Sun Goddess | Power: Light and radiance | Species: Deity</p>
                <p class="card-text">A sun deity whose light restores balance after the world falls into darkness.</p>
                <a class="btn btn-outline-dark btn-sm" href="details.html">View details</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

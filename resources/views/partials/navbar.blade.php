<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
      <a class="navbar-brand" href="/">Ticket</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
        <div class="collapse navbar-collapse nav justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link {{ ($title === "Home") ? 'active' : '' }}" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ ($title === "About") ? 'active' : '' }}" href="/about">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ ($title === "List Bus") ? 'active' : '' }}" href="/list">List Bus</a>
                </li>
            </ul>
        </div>
        <ul class="nav justify-content-end">
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <a href="/login"><button class="btn btn-success me-md-2 {{ ($title === "Home") ? 'active' : '' }}" type="button" target="_blank">Login</button></a>
                <a href="/register"><button class="btn btn-success {{ ($title === "Home") ? 'active' : '' }}" type="button" target="_blank">Register</button></a>
            </div>
        </ul>
    </div>
</nav>

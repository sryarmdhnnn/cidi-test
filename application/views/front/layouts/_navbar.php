<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="<?= base_url() ?>">
			<img style="max-width:250px;" src="<?= base_url('img/identitas/digitalindo.png') ?>">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item <?php if($title == 'Beranda') echo "active"; ?>">
				<a class="nav-link" href="<?= base_url() ?>">Beranda</a>
				</li>
				<li class="nav-item <?php if($title == 'Fasilitas') echo "active"; ?>">
					<a class="nav-link" href="<?= base_url('profil/fasilitas') ?>">Gallery</a>
				</li>
				<li class="nav-item <?php if($title == 'Berita') echo "active"; ?>">
				<a class="nav-link" href="<?= base_url('blog') ?>">Berita</a>
				</li>
			</ul>
		</div>
	</div>
</nav>

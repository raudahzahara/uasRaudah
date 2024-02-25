<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php include "header.php"; ?>
<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
					<div class="jumbotron">
					<img src="images/SLIDE.JPEG">
						<h2>SELAMAT DATANG DI HIJAB QUEEN</h2>
						<p>	Hijab yang saya jual memiliki berbagai model yang sangat cantik untuk melengkapi segala aktivitas, mulai dari hijab di rumahan, untuk ke kmapus, jalan-jalan, olahraga, sampai ke acara kondangan maupun ke acara resmi.</p>
                 </p>
				
						<a class="btn btn-danger btn-lg" href="tampil-user.php"role="button">User</a></p>
				</div>
      </div>
		</div>
</div><!-- Akhir Jumbotron -->
<?php include "footer.php";?>
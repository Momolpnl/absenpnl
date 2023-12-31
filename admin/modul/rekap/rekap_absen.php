<?php
// tampilkan data mengajar
$kelasMengajar = mysqli_query($con, "SELECT * FROM tb_mengajar 

INNER JOIN tb_master_matkul ON tb_mengajar.id_mk=tb_master_matkul.id_mk
INNER JOIN tb_mkelas ON tb_mengajar.id_mkelas=tb_mkelas.id_mkelas
INNER JOIN tb_dosen ON tb_mengajar.id_dosen=tb_dosen.id_dosen

INNER JOIN tb_semester ON tb_mengajar.id_semester=tb_semester.id_semester
INNER JOIN tb_thajaran ON tb_mengajar.id_thajaran=tb_thajaran.id_thajaran
WHERE tb_mengajar.id_mkelas='$_GET[kelas]' AND tb_thajaran.status=1 AND tb_semester.id_semester=1 ");

foreach ($kelasMengajar as $d)

?>



<!-- 
<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						
					</div>
				</div> -->
<div class="page-inner">

	<div class="page-header">
		<h4 class="page-title">Rekap Absen</h4>
		<ul class="breadcrumbs">
			<li class="nav-home">
				<a href="#">
					<i class="flaticon-home"></i>
				</a>
			</li>
			<li class="separator">
				<i class="flaticon-right-arrow"></i>
			</li>
			<li class="nav-item">
				<?= $d['nama_kelas'] ? strtoupper($d['nama_kelas']) : '' ?>
			</li>

		</ul>
	</div>


	<div class="row">

		<div class="col-md-12 col-xs-12">


			<div class="card">
				<div class="card-body">

					<table class="table table-head-bg-danger table-xs">
						<thead>
							<tr>
								<th scope="col">No.</th>
								<th>Kode Pelajaran</th>
								<th scope="col">Mata Kuliah</th>
								<th scope="col">Absensi</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$no = 1;
							foreach ($kelasMengajar as $mp) {
							?>
								<tr>
									<td><?= $no++; ?>.</td>
									<td><?= $mp['kode_mk']; ?></td>
									<td>
										<b><?= $mp['mk']; ?></b><br>
										<code><?= $mp['nama_dosen']; ?></code>
									</td>
									<td>
										<?php
										// Check if 'id_mengajar' key exists in $mp array and $_GET['kelas'] is set
										if (isset($mp['id_mengajar']) && isset($_GET['kelas'])) {
											$rekapUrl = "?page=rekap&act=rekap-perbulan&pelajaran={$mp['id_mengajar']}&kelas={$_GET['kelas']}";
										?>
											<a href="<?= $rekapUrl ?>" class="btn btn-default">
												<span class="btn-label">
													<i class="fas fa-clipboard"></i>
												</span>
												Rekap Absen
											</a>
										<?php } else {
											// Handle the case where 'id_mengajar' is not set in $mp or $_GET['kelas'] is not set
											echo "Error: Missing required data";
										}
										?>
									</td>
								</tr>
							<?php } ?>


						</tbody>
					</table>

				</div>

			</div>
		</div>

	</div>

</div>
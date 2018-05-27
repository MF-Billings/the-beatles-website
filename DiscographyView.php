<?php
$discography = new Discography_model();
$albums = $discography->getAlbums();
?>

<table>
	<thead>
	<tr>
	    <th>Album</th>
	    <th>Released</th>
	    <th>Cover</th>
    </tr>
	</thead>

	<tbody>
		<?php foreach ($albums as $row): ?>
		<tr>
			<td><?= $row['album'] ?></td>
			<td><?= $row['released'] ?></td>
			<td><img src="<?= $row['image'] ?>" /></td>
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>
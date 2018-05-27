<?php
$discography = new Discography_model();
$songInfo = $discography->getSongs();
?>

<table>
	<thead>
		<tr>
			<th>Song</th>
			<th>Album</th>
			<th>Songwriter(s)</th>
		</tr>
	</thead>
	<tbody>
	<?php foreach ($songInfo as $row): ?>
		<tr>		
	        <td>
        	<?php if ($row['lyrics']): ?>
	        	<a href="lyrics.php?id=<?= $row['id']; ?>"><?= $row['song'] ?></a>
	        <?php else: ?>
	        	<?= $row['song'] ?>
        	<?php endif; ?>
	        </td>
	        <td><?= $row['album'] ?></td>
	        <td><?= $row['songwriters'] ?></td>
		</tr>
	<?php endforeach; ?>
	</tbody>
</table>
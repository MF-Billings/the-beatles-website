<?php

class Discography_model
{
	private $db;
    private $lastQuery;

    public function __construct()
    {
        $this->db = DatabaseAdapterFactory::create(DB_ADAPTER_TYPE);
    }
    
    public function test()
    {
        return $this->db->query("SELECT * FROM albums");
        // return $this->db->runQuery("SELECT albums.title AS 'Album', albums.year AS 'Released', albums.image FROM albums WHERE albums.is_core_catalogue = 1");
    }

    public function getAlbums()
	{
        return $this->db->fetchAll("SELECT albums.title 'album', albums.year 'released', albums.image FROM albums WHERE albums.is_core_catalogue = 1");
	}

    // maybe replace
    public function getSongs()
    {
        return $this->db->fetchAll("
            SELECT songs.id, songs.title 'song', songs.lyrics, albums.title 'album', 
            GROUP_CONCAT(songwriters.name ORDER BY songwriters.name ASC SEPARATOR ', ') 'songwriters'
            FROM songs
            INNER JOIN tracks ON tracks.song_id = songs.id
            INNER JOIN albums ON albums.id = tracks.album_id
            LEFT JOIN songwriters_song ON songwriters_song.song_id = songs.id 
            LEFT JOIN songwriters ON songwriters.id = songwriters_song.songwriter_id
            GROUP BY songs.title;
        ");
    }

    public function findSong($id)
    {
        $songId = is_int($id)? $id : 0;

        $result = $this->db->fetchAll("
            SELECT * FROM songs WHERE id = $songId
        ");

        if (count($result) > 1) {
            throw new Exception("Ambiguous result set. Expected query to return 1 record but returned $result.length");
        }
        return reset($result);
    }
}
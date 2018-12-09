<?php
include 'connect.php';

function get_single_video($pdo, $vid) {
    $query = "SELECT * FROM video WHERE vid_id = '$vid'";

    $get_video = $pdo->query($query);
    $results = array();

    while($row = $get_video->fetch(PDO::FETCH_ASSOC)) {
        $results[] = $row;

        // you could run subresult queries here - just write another function and append.
    }

    return $results;
}

function get_all_videos($pdo) {
    $query = "SELECT v.*, g.genre_name FROM video v INNER JOIN tbl_vid_gen l INNER JOIN tbl_genre g ON v.vid_id = l.vid_id AND l.genre_id = g.genre_id;";

    $get_video = $pdo->query($query);
    $results = array();

    while($row = $get_video->fetch(PDO::FETCH_ASSOC)) {
        $results[] = $row;
    }

    return $results;
}

?>
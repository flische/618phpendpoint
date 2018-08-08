<?php

require_once('mysql_connect.php');
// include, include_once, require, require_once //
// only the _once

// USE BACKTICKS around ALL table name and ALL user names

$query = "SELECT * FROM `users`";

$result = mysqli_query($conn, $query);
// $result is the response // but now we have to go FETCH the data // use while loop

$output = [
    'success' => false,
    'data' => []
];


if($result){ // did the query work?
    if(mysqli_num_rows($result) > 0){ // did I get any results?
        $output['success'] = true;
        while( $row = mysqli_fetch_assoc($result)){ // get data
            //keep looping while data is coming in and store it in a row every time //
            // array_push($output['data'], $row); // is the same as below // og push
            // $output['data'][count($output['data'])] = $row // CS push
            $output['data'][] = $row; // push in PHP now

        }

    } else {
        // the query worked but there was no data
        $output['error'] = 'no data';
    }

} else {
    // the query didn't work
    $output['error'] = 'query failed';
}

$json_output = json_encode($output);

print($json_output);




// only fetches one row at a time so we need to call this multiple times



?>

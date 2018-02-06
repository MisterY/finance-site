<?php
//header( 'Location: index.html' ) ;

// Return the content of the index file.
$content=file_get_contents('index.html');
echo $content;
?>
<?php

if (isset($_SESSION["USERNAME"])) {
    include 'header.registered.inc.php';
} else {
    include 'header.visitor.inc.php';
}
?>
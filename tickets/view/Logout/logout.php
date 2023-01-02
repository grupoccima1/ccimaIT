<?php
require_once("../../config/conexion.php");
session_destroy();
header("Location:"."http://localhost/HelpDesk3/"."index.php");
exit();
?>
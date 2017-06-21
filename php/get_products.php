<?php

function get_products($mysqli, $sqls) {
  $query = $sqls['select_10_products'];
  if ($result = $mysqli->query($query)) {

    /* fetch associative array */
    while ($row = $result->fetch_assoc()) {
      $image = "no-image-icon-15.png";
      if ((isset($row['imagepath']) && trim($row['imagepath'])!=='')) {
        $image = $row['imagepath'];
      }
      echo '<div class="product"><img src="../img/'.$image.'" alt="'.htmlspecialchars($row['name']).'" width="128" height="128" class="pngfix" /></div>';
    }
  }

  /* free result set */
  $result->free();
}
?>

<?php

$rs = mysqli_query($conn, "SELECT column FROM table WHERE column = '" . $variavel . "'");

if ($rs) {
  if (mysqli_num_rows($rs) > 0) {
    while ($linha = mysqli_fetch_assoc($rs)) {
      echo $linha["column"];
    }
  } else {
    echo "Not Available";
  }
} 

?>
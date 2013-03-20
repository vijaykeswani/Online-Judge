<?php
exec($(gcc comb.c -o helloworld) -n,$out,$ver);
echo $out;
echo $ver;
?>

<?php

    const SERVER = "localhost";
    const USER = "root";
    const PASSWORD = "root";
    const BASE = "introdb76878";

    function conectar(){
        $link = mysqli_connect(
                SERVER,
                USER,
                PASSWORD,
                BASE);
        return $link;
    }
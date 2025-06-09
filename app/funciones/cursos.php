<?php

    function listarCursos()
    {
        $link = conectar();
        $sql = "SELECT * FROM cursos";
        return mysqli_query($link, $sql);
    }
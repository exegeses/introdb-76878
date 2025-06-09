<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Academia - Listado de Cursos</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #0d1117;
            color: #e6edf3;
        }

        .navbar {
            background: linear-gradient(135deg, #1a1d29, #2d3748);
            border-bottom: 1px solid #30363d;
        }

        .card {
            background: linear-gradient(135deg, #161b22, #21262d);
            border: 1px solid #30363d;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
        }

        .table-dark {
            --bs-table-bg: #21262d;
            --bs-table-border-color: #30363d;
        }

        .table-hover tbody tr:hover {
            background-color: #2d3339 !important;
        }

        .badge {
            font-weight: 500;
            padding: 0.5em 0.75em;
        }

        .btn-outline-light:hover {
            background-color: #238636;
            border-color: #238636;
        }

        .search-box {
            background-color: #21262d;
            border: 1px solid #30363d;
            border-radius: 8px;
        }

        .search-box:focus {
            border-color: #238636;
            box-shadow: 0 0 0 0.2rem rgba(35, 134, 54, 0.25);
        }

        .table-container {
            border-radius: 12px;
            overflow: hidden;
        }

        .nivel-basico { background-color: #1f6feb; }
        .nivel-intermedio { background-color: #fb8500; }
        .nivel-avanzado { background-color: #da3633; }

        .area-programacion { color: #7c3aed; }
        .area-diseno { color: #06b6d4; }
        .area-marketing { color: #f59e0b; }
        .area-datos { color: #10b981; }
        .area-idiomas { color: #ec4899; }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark mb-4">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">
            <i class="fas fa-graduation-cap me-2"></i>
            Academia Web
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="#"><i class="fas fa-book me-1"></i>Cursos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-users me-1"></i>Alumnos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-chart-line me-1"></i>Reportes</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<?php
    require 'funciones/conexion.php';
    require 'funciones/cursos.php';
    $cursos = listarCursos();
?>

<!-- Contenido Principal -->
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h4 class="mb-0">
                        <i class="fas fa-list me-2"></i>
                        Listado de Cursos
                    </h4>
                    <span class="badge bg-primary">7 cursos</span>
                </div>

                <div class="card-body">
                    <!-- Filtros -->
                    <div class="row mb-4">
                        <div class="col-md-6">
                            <div class="input-group">
                                    <span class="input-group-text bg-dark border-secondary">
                                        <i class="fas fa-search"></i>
                                    </span>
                                <input type="text" class="form-control search-box" id="searchInput"
                                       placeholder="Buscar curso...">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <select class="form-select search-box" id="filterArea">
                                <option value="">Todas las áreas</option>
                                <option value="Programación">Programación</option>
                                <option value="Diseño Gráfico">Diseño Gráfico</option>
                                <option value="Marketing Digital">Marketing Digital</option>
                                <option value="Ciencia de Datos">Ciencia de Datos</option>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <select class="form-select search-box" id="filterNivel">
                                <option value="">Todos los niveles</option>
                                <option value="Básico">Básico</option>
                                <option value="Intermedio">Intermedio</option>
                                <option value="Avanzado">Avanzado</option>
                            </select>
                        </div>
                    </div>

                    <!-- Tabla -->
                    <div class="table-container">
                        <div class="table-responsive">
                            <table class="table table-dark table-hover align-middle">
                                <thead class="table-secondary">
                                <tr>
                                    <th scope="col" class="text-center">ID</th>
                                    <th scope="col">Curso</th>
                                    <th scope="col" class="text-end">Matrícula</th>
                                    <th scope="col">Área</th>
                                    <th scope="col" class="text-center">Nivel</th>
                                    <th scope="col" class="text-center">Acciones</th>
                                </tr>
                                </thead>
                                <tbody>
    <?php
                while ( $fila = mysqli_fetch_assoc($cursos) ) {
    ?>
                                <tr>
                                    <td class="text-center fw-bold"><?= $fila['idCurso'] ?></td>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <i class="fas fa-book text-primary me-2"></i>
                                            <span class="fw-medium"><?= $fila['curso'] ?></span>
                                        </div>
                                    </td>
                                    <td class="text-end fw-bold text-success">$<?= $fila['matricula'] ?></td>
                                    <td>
                                        <span class="fw-medium area-programacion">area</span>
                                    </td>
                                    <td class="text-center">
                                        <span class="badge nivel-basico">nivel</span>
                                    </td>
                                    <td class="text-center">
                                        <button class="btn btn-outline-light btn-sm me-1">
                                            <i class="fas fa-eye"></i>
                                        </button>
                                        <button class="btn btn-outline-success btn-sm">
                                            <i class="fas fa-user-plus"></i>
                                        </button>
                                    </td>
                                </tr>
<?php
                }
?>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Paginación -->
                    <nav aria-label="Paginación de cursos" class="mt-4">
                        <ul class="pagination justify-content-center" id="pagination">
                            <!-- La paginación se generará dinámicamente -->
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal para detalles del curso -->
<div class="modal fade" id="cursoModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content bg-dark">
            <div class="modal-header">
                <h5 class="modal-title" id="cursoModalTitle">Detalles del Curso</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body" id="cursoModalBody">
                <!-- Contenido del modal -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary">Inscribirse</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
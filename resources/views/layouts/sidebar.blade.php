<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
        <img src="{{ asset('images/package.png') }}" alt="WareHouse" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">Ware<strong>House</strong></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar os-host os-theme-light os-host-overflow os-host-overflow-y os-host-resize-disabled os-host-scrollbar-horizontal-hidden os-host-transition"><div class="os-resize-observer-host observed"><div class="os-resize-observer" style="left: 0px; right: auto;"></div></div><div class="os-size-auto-observer observed" style="height: calc(100% + 1px); float: left;"><div class="os-resize-observer"></div></div><div class="os-content-glue" style="margin: 0px -8px; width: 249px; height: 879px;"></div><div class="os-padding"><div class="os-viewport os-viewport-native-scrollbars-invisible" style="overflow-y: scroll;"><div class="os-content" style="padding: 0px 8px; height: 100%; width: 100%;">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
            <img src="{{ asset('images/user_red.png') }}" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
            <a href="#" class="d-block">Alexander Pierce</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column nav-flat nav-legacy nav-compact nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
                with font-awesome or any other icon font library -->
                <li class="nav-item has-treeview {{ request()->is('dashboard*') ? 'menu-open' : '' }}">
                    <a href="{{ route('dashboard') }}" class="nav-link {{ request()->is('dashboard*') ? 'active' : '' }}">
                    <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li class="nav-item has-treeview {{ request()->is('system*') ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-tv"></i>
                        <p>Sistema<i class="right fas fa-angle-left"></i></p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="./index.html" class="nav-link">
                            <i class="fas fa-user-shield nav-icon"></i>
                            <p>Usuarios</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="./index3.html" class="nav-link">
                            <i class="fas fa-users-cog nav-icon"></i>
                            <p>Equipos</p>
                            </a>
                        </li>
                        
                    </ul>
                </li>
            <li class="nav-item has-treeview {{ request()->is('master*') ? 'menu-open' : '' }}">
                <a href="#" class="nav-link {{ request()->is('master/product') ? 'active' : '' }}">
                    <i class="nav-icon fas fa-toolbox"></i>
                    <p>Maestros<i class="right fas fa-angle-left"></i></p>
                </a>
                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="{{ route('product.index') }}" class="nav-link {{ request()->is('master/product*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i><p>Productos</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('line.index') }}" class="nav-link {{ request()->is('master/line*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i><p>Linea</p>
                        </a>
                    </li> 
                    <li class="nav-item">
                        <a href="{{ route('subline.index') }}" class="nav-link {{ request()->is('master/subline*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i><p>SubLinea</p>
                        </a>
                    </li> 
                    <li class="nav-item">
                        <a href="{{ route('family.index') }}" class="nav-link {{ request()->is('master/family*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i><p>Familia</p>
                        </a>
                    </li> 
                    <li class="nav-item">
                        <a href="{{ route('um.index') }}" class="nav-link {{ request()->is('master/um*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i><p>Unidad de Medida</p>
                        </a>
                    </li> 
                    <li class="nav-item">
                        <a href="{{ route('reason.index') }}" class="nav-link {{ request()->is('master/reason*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i><p>Motivos</p>
                        </a>
                    </li> 
                    <li class="nav-item">
                        <a href="{{ route('warehouse.index') }}" class="nav-link {{ request()->is('master/warehouse*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i><p>Almacenes</p>
                        </a>
                    </li> 
                    <li class="nav-item">
                        <a href="{{ route('bpartner.index') }}" class="nav-link {{ request()->is('master/bpartner*') ? 'active' : '' }}">
                            <i class="fas fa-users nav-icon"></i><p>Socio de Negocio</p>
                        </a>
                    </li> 
                   
                </ul>
            </li>

            <li class="nav-header">OPERACIONES</li>

            <li class="nav-item">
                <a href="{{ route('input.index') }}" class="nav-link {{ request()->is('move/input*') ? 'active' : '' }}">
                    <i class="nav-icon fas fa-boxes"></i>
                    <p>Ingreso</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('transfer.index') }}" class="nav-link {{ request()->is('move/transfer*') ? 'active' : '' }}">
                    <i class="nav-icon fas fa-truck"></i>
                    <p>Traslado</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('output.index') }}" class="nav-link {{ request()->is('move/output*') ? 'active' : '' }}">
                    <i class="nav-icon fas fa-dolly"></i>
                    <p>Salida</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('production.index') }}" class="nav-link {{ request()->is('move/production*') ? 'active' : '' }}">
                    <i class="nav-icon fas fa-industry"></i>
                    <p>Produccion</p>
                </a>
            </li>
            <li class="nav-header">ANALISIS</li>
            <li class="nav-item">
                <a href="pages/gallery.html" class="nav-link">
                    <i class="nav-icon far fa-list-alt"></i>
                    <p>Stock</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="pages/gallery.html" class="nav-link">
                    <i class="nav-icon fas fa-chart-line"></i>
                    <p>Kardex</p>
                </a>
            </li>

            <li class="nav-header"></li>

            <li class="nav-item">
                <a href="pages/gallery.html" class="nav-link">
                    <i class="nav-icon far fa-circle text-danger"></i>
                    <p>Salir</p>
                </a>
            </li>
            
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div></div></div><div class="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable os-scrollbar-auto-hidden"><div class="os-scrollbar-track"><div class="os-scrollbar-handle" style="width: 100%; transform: translate(0px, 0px);"></div></div></div><div class="os-scrollbar os-scrollbar-vertical os-scrollbar-auto-hidden"><div class="os-scrollbar-track"><div class="os-scrollbar-handle" style="height: 94.522%; transform: translate(0px, 0px);"></div></div></div><div class="os-scrollbar-corner"></div></div>
    <!-- /.sidebar -->
  </aside>
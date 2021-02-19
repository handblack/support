<!-- Main Sidebar Container -->
<aside class="main-sidebar main-sidebar-custom sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{ url('dashboard') }}" class="brand-link">
        <img src="{{ asset('images/package.png') }}" alt="WareHouse" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">Ware<strong>House</strong></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{ asset('images/user_red.png') }}" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="{{ route('profile.index') }}" class="d-block">{{ Auth::user()->name }}</a>
            </div>
        </div>

        

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column nav-flat nav-compact nav-collapse-hide-child" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
                with font-awesome or any other icon font library -->
                <li class="nav-item has-treeview {{ request()->is('dashboard*') ? 'menu-open' : '' }}">
                    <a href="{{ route('dashboard') }}" class="nav-link {{ request()->is('dashboard*') ? 'active' : '' }}">
                    <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Dashboard</p>
                    </a>
                </li>

                <li class="nav-item has-treeview {{ request()->is('system*') ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is('system*') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-tv"></i>
                        <p>Sistema<i class="right fas fa-angle-left"></i></p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('users.index') }}" class="nav-link {{ request()->is('system/user*') ? 'active' : '' }}">
                                <i class="fas fa-user-shield nav-icon"></i><p>Usuarios</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('teams.index') }}" class="nav-link {{ request()->is('system/team*') ? 'active' : '' }}">
                                <i class="fas fa-users-cog nav-icon"></i><p>Equipos</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('role.index') }}" class="nav-link {{ request()->is('system/role*') ? 'active' : '' }}">
                                <i class="fas fa-user-shield nav-icon"></i><p>Roles</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('sequencer.index') }}" class="nav-link {{ request()->is('system/sequencer*') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i><p>Series SUNAT</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('posconfig.index') }}" class="nav-link {{ request()->is('system/pos*') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Configuracion POS</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('currency.index') }}" class="nav-link {{ request()->is('system/currency*') ? 'active' : '' }}">
                                <i class="fas fa-coins nav-icon"></i><p>Divisa</p>
                            </a>
                        </li> 
                        
                    </ul>
                </li>
                
                <li class="nav-item has-treeview {{ request()->is('master*') ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is('master*') ? 'active' : '' }}">
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
                            <a href="{{ route('bank.index') }}" class="nav-link {{ request()->is('master/bank*') ? 'active' : '' }}">
                                <i class="fas fa-coins nav-icon"></i><p>Cuenta Bancos</p>
                            </a>
                        </li> 
                    </ul>
                </li>

                <li class="nav-item has-treeview {{ request()->is('partner*') ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is('partner*') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-users"></i>
                        <p>Socio de Negocio<i class="right fas fa-angle-left"></i></p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('bpartner.index') }}" class="nav-link {{ request()->is('partner/bpartner*') ? 'active' : '' }}">
                                <i class="fas fa-users nav-icon"></i> <p>Maestro SN</p>
                            </a>
                        </li> 
                        <li class="nav-item">
                            <a href="{{ route('bpartner.eecc') }}" class="nav-link {{ request()->is('partner/report*') ? 'active' : '' }}">
                                <i class="far fa-file-alt nav-icon"></i> <p>Estado de Cuenta</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item has-treeview {{ request()->is('move*') ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is('move*') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-toolbox"></i>
                        <p>Logistica<i class="right fas fa-angle-left"></i></p>
                    </a>
                    <ul class="nav nav-treeview">
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
                    </ul>
                </li>    

                <li class="nav-item has-treeview {{ request()->is('bank*') ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is('bank*') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-cash-register"></i>
                        <p>Caja/Bancos<i class="right fas fa-angle-left"></i></p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('received.index') }}" class="nav-link {{ request()->is('bank/received*') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-coins"></i>
                                <p>Pagos Recibidos</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('delivered.index') }}" class="nav-link {{ request()->is('bank/delivered*') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-coins"></i>
                                <p>Pagos Emitidos</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('delivered.index') }}" class="nav-link {{ request()->is('bank/allocation*') ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Asignación</p>
                            </a>
                        </li>
                        
                        
                    </ul>
                </li> 

                <li class="nav-item has-treeview {{ request()->is('report*') ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is('report*') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-print"></i>
                        <p>Reportes<i class="right fas fa-angle-left"></i></p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('received.index') }}" class="nav-link {{ request()->is('report/received*') ? 'active' : '' }}">
                                <i class="nav-icon far fa-circle"></i>
                                <p>Arqueo de Caja</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('received.index') }}" class="nav-link {{ request()->is('report/received*') ? 'active' : '' }}">
                                <i class="nav-icon far fa-circle"></i>
                                <p>Resumen de Ventas</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-header"></li>

                <li class="nav-item">
                    <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="nav-link">
                        <i class="fas fa-sign-out-alt text-danger nav-icon"></i>
                        <p>Salir</p>
                    </a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        {{ csrf_field() }}
                    </form>
                </li>
                <li class="nav-header"></li>
             
               
             
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->

    <div class="sidebar-custom">
      <a href="#" class="btn btn-link"><i class="fas fa-cogs"></i></a>
      <a href="#" class="btn btn-secondary hide-on-collapse pos-right">Help</a>
    </div>
    <!-- /.sidebar-custom -->
</aside>
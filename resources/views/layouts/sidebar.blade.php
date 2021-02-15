<aside class="main-sidebar sidebar-dark-primary elevation-4 ">
    <!-- Brand Logo -->
    <a href="{{ url('dashboard') }}" class="brand-link">
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
                <a href="{{ route('profile.index') }}" class="d-block">{{ Auth::user()->name }}</a>
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
            


            <li class="nav-header">CONSULTAS RAPIDAS</li>
            <li class="nav-item">
                <a href="#" class="nav-link query-product" data-toggle="modal" data-target="#ajax-query-product-by-code">
                    <i class="nav-icon far fa-list-alt"></i>
                    <p>Producto</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link query-product" data-toggle="modal" data-target="#ajax-query-bpartnercode">
                    <i class="nav-icon far fa-list-alt"></i>
                    <p>Socio de Negocio</p>
                </a>
            </li>

            <li class="nav-header">ANALISIS</li>
            <li class="nav-item">
                <a href="{{ route('query.stock') }}" class="nav-link {{ request()->is('query/stock*') ? 'active' : '' }}">
                    <i class="nav-icon far fa-list-alt"></i>
                    <p>Stock Live</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('query.kardex') }}" class="nav-link {{ request()->is('query/kardex*') ? 'active' : '' }}">
                    <i class="nav-icon fas fa-chart-line"></i>
                    <p>Kardex</p>
                </a>
            </li>

            <li class="nav-header"></li>

            <li class="nav-item">
                <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="nav-link">
                    <i class="nav-icon far fa-circle text-danger"></i>
                    <p>Salir</p>
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    {{ csrf_field() }}
                </form>
            </li>
            
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div></div></div><div class="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable os-scrollbar-auto-hidden"><div class="os-scrollbar-track"><div class="os-scrollbar-handle" style="width: 100%; transform: translate(0px, 0px);"></div></div></div><div class="os-scrollbar os-scrollbar-vertical os-scrollbar-auto-hidden"><div class="os-scrollbar-track"><div class="os-scrollbar-handle" style="height: 94.522%; transform: translate(0px, 0px);"></div></div></div><div class="os-scrollbar-corner"></div></div>
    <!-- /.sidebar -->
  </aside>
  
  
<!-- Modal -->
<div class="modal fade" id="ajax-query-product-by-code" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background-color: rgba(0,0,0,.03);">
                <!-- form id="form-query-product" -->
                    <div class="form-group row" style="margin-bottom: 0px;">
                        <label for="inputPassword" class="col-sm-4 col-form-label">Consultar STOCK</label>
                        <div class="col-sm-7">
                            <div class="input-group">
                                <input type="text" id="query-product-code" name="query_product_code" class="form-control" placeholder="Codigo" aria-label="Recipient's username" aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary query-product-engine-bnt" type="button"><i class="fab fa-searchengin"></i> Consultar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                <!-- /form -->
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-12 query-result-product-engine">
                        <h3 class="text-center"><img class="" width="100" alt="User Avatar" src='data:image/svg+xml;utf8,
                            <svg data-name="Layer 1" id="Layer_1" viewBox="0 0 46 46" xmlns="http://www.w3.org/2000/svg"><title/>
                                <path d="M15,38v2H9a3,3,0,0,1-3-3V31H8v6a1,1,0,0,0,1,1Z"/><path d="M40,31v6a3,3,0,0,1-3,3H31V38h6a1,1,0,0,0,1-1V31Z"/>
                                <path d="M40,9v6H38V9a1,1,0,0,0-1-1H31V6h6A3,3,0,0,1,40,9Z"/><path d="M15,6V8H9A1,1,0,0,0,8,9v6H6V9A3,3,0,0,1,9,6Z"/>
                                <rect height="19" width="3" x="10" y="11"/><rect height="3" width="3" x="10" y="32"/><rect height="24" width="1" x="14" y="11"/>
                                <rect height="24" width="3" x="16" y="11"/><rect height="24" width="1" x="20" y="11"/><rect height="24" width="3" x="22" y="11"/>
                                <rect height="24" width="1" x="26" y="11"/><rect height="24" width="3" x="28" y="11"/><rect height="24" width="1" x="32" y="11"/>
                                <rect height="24" width="2" x="34" y="11"/></svg>
                                '></h3>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div>
<!-- /.Modal -->
<!-- Modal -->
<div class="modal fade" id="ajax-query-bpartnercode" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background-color: rgba(0,0,0,.03);">
                <!-- form id="form-query-product" -->
                    <div class="form-group row" style="margin-bottom: 0px;">
                        <label for="inputPassword" class="col-sm-4 col-form-label">Informacion de Socio de Negocio</label>
                        <div class="col-sm-7">
                            <div class="input-group">
                                <input type="text" id="query-product-code" name="query_product_code" class="form-control" placeholder="Codigo" aria-label="Recipient's username" aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary query-product-engine-bnt" type="button"><i class="fab fa-searchengin"></i> Consultar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                <!-- /form -->
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-12 query-result-product-engine">
                        <h3 class="text-center"><img class="" width="100" alt="User Avatar" src='data:image/svg+xml;utf8,
                            <svg data-name="Layer 1" id="Layer_1" viewBox="0 0 46 46" xmlns="http://www.w3.org/2000/svg"><title/>
                                <path d="M15,38v2H9a3,3,0,0,1-3-3V31H8v6a1,1,0,0,0,1,1Z"/><path d="M40,31v6a3,3,0,0,1-3,3H31V38h6a1,1,0,0,0,1-1V31Z"/>
                                <path d="M40,9v6H38V9a1,1,0,0,0-1-1H31V6h6A3,3,0,0,1,40,9Z"/><path d="M15,6V8H9A1,1,0,0,0,8,9v6H6V9A3,3,0,0,1,9,6Z"/>
                                <rect height="19" width="3" x="10" y="11"/><rect height="3" width="3" x="10" y="32"/><rect height="24" width="1" x="14" y="11"/>
                                <rect height="24" width="3" x="16" y="11"/><rect height="24" width="1" x="20" y="11"/><rect height="24" width="3" x="22" y="11"/>
                                <rect height="24" width="1" x="26" y="11"/><rect height="24" width="3" x="28" y="11"/><rect height="24" width="1" x="32" y="11"/>
                                <rect height="24" width="2" x="34" y="11"/></svg>
                                '></h3>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div>
<!-- /.Modal -->


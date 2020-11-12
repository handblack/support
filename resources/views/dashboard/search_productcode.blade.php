<div class="card card-widget widget-user-2">
    <!-- Add the bg color to the header using any of the bg-* classes -->
    <div class="widget-user-header bg-warning">
        <div class="widget-user-image" style="width:50px;heigth:50px;">
            <img class="img-circle elevation-2"  alt="User Avatar" src='data:image/svg+xml;utf8,
            <svg data-name="Layer 1" id="Layer_1" viewBox="0 0 46 46" xmlns="http://www.w3.org/2000/svg"><title/>
                <path d="M15,38v2H9a3,3,0,0,1-3-3V31H8v6a1,1,0,0,0,1,1Z"/><path d="M40,31v6a3,3,0,0,1-3,3H31V38h6a1,1,0,0,0,1-1V31Z"/>
                <path d="M40,9v6H38V9a1,1,0,0,0-1-1H31V6h6A3,3,0,0,1,40,9Z"/><path d="M15,6V8H9A1,1,0,0,0,8,9v6H6V9A3,3,0,0,1,9,6Z"/>
                <rect height="19" width="3" x="10" y="11"/><rect height="3" width="3" x="10" y="32"/><rect height="24" width="1" x="14" y="11"/>
                <rect height="24" width="3" x="16" y="11"/><rect height="24" width="1" x="20" y="11"/><rect height="24" width="3" x="22" y="11"/>
                <rect height="24" width="1" x="26" y="11"/><rect height="24" width="3" x="28" y="11"/><rect height="24" width="1" x="32" y="11"/>
                <rect height="24" width="2" x="34" y="11"/></svg>
                '>
        </div>
        <!-- /.widget-user-image -->
        <h3 class="widget-user-username"><strong>{{ $product->productname }}</strong></h3>
        <h5 class="widget-user-desc">{{ $product->productcode }}</h5>
    </div>
    <div class="card-footer p-0">
        <ul class="nav flex-column">
            @foreach ($stock as $item)
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        {{ $item->warehousename }}&nbsp;
                        <span class="float-right badge {{ ($item->stock > 0) ? 'bg-primary' : 'bg-danger' }}" style="font-size:1em;font-weight:normal">
                            &nbsp;{{ $item->stock }}&nbsp;
                        </span>
                    </a>
                </li>
            @endforeach
        </ul>
    </div>
  </div>
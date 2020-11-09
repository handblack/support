@extends('layouts.app')
@section('container')

    <div class="row">
        <div class="col-12">
            <div class="callout callout-info">
                <h5><i class="fas fa-info"></i> Note:</h5>
                This page has been enhanced for printing. Click the print button at the bottom of the invoice to test.
            </div>


        <!-- Main content -->
        <div class="invoice p-3 mb-3">
            <!-- title row -->
            <div class="row">
            <div class="col-12">
                <h4>
                <i class="fas fa-globe"></i> AdminLTE, Inc.
                <small class="float-right">Emision: 2/10/2014</small>
                </h4>
            </div>
            <!-- /.col -->
            </div>
            <!-- info row -->
            <!--
            <div class="row invoice-info">
                <div class="col-sm-4 invoice-col">
                    From
                    <address>
                    <strong>Admin, Inc.</strong><br>
                    795 Folsom Ave, Suite 600<br>
                    Email: info@almasaeedstudio.com
                    </address>
                </div>
                <div class="col-sm-4 invoice-col">
                    To
                    <address>
                    <strong>John Doe</strong><br>
                    795 Folsom Ave, Suite 600<br>
                    Email: john.doe@example.com
                    </address>
                </div>
                <div class="col-sm-4 invoice-col">
                    <b>Invoice #007612</b><br>
                    <br>
                    <b>Order ID:</b> 4F3S8J<br>
                    <b>Payment Due:</b> 2/22/2014<br>
                    <b>Account:</b> 968-34567
                </div>
            </div>
            -->
            <!-- /.row -->

            <!-- Table row -->
            <div class="row">
            <div class="col-12 table-responsive">
                <table class="table table-striped table-sm">
                <thead>
                    <tr>
                        <th width="150">Codigo</th>
                        <th>Producto</th>
                        <th width="100">Cantidad</th>
                        <th width="80">UM</th>
                        <th width="60"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>112</td>
                        <td>Call of Duty</td>
                        <td>1</td>
                        <td>UND</td>
                        <td>
                            <a href="#">&nbsp;<i class="fas fa-pen-square"></i>&nbsp;</a>&nbsp;
                            <a href="#">&nbsp;<i class="fas fa-trash-alt"></i>&nbsp;</a>
                        </td>
                    </tr>
              
                
                </tbody>
                </table>
            </div>
            <!-- /.col -->
            </div>
            <!-- /.row -->

            <div class="row">
            <!-- accepted payments column -->
            <div class="col-6">
                <p class="lead">Documentos Vinculados:</p>
                <p class="text-muted well well-sm shadow-none" style="margin-top: 10px;">
                    <table class="table table-sm">
                        <thead>
                            <th>Documento</th>
                            <th>Serie</th>
                            <th>Nro</th>
                            <th width="50"></th>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <a href="#">&nbsp;<i class="fas fa-trash-alt"></i>&nbsp;</a>
                                </td>
                            </tr>
                            
                        </tbody>
                    </table>
                Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem
                plugg
                dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra.
                </p>
            </div>
            <!-- /.col -->
            <div class="col-6">
                <p class="lead">Amount Due 2/22/2014</p>

                <div class="table-responsive">
                <table class="table">
                    <tbody><tr>
                    <th style="width:50%">Subtotal:</th>
                    <td>$250.30</td>
                    </tr>
                    <tr>
                    <th>Tax (9.3%)</th>
                    <td>$10.34</td>
                    </tr>
                    <tr>
                    <th>Shipping:</th>
                    <td>$5.80</td>
                    </tr>
                    <tr>
                    <th>Total:</th>
                    <td>$265.24</td>
                    </tr>
                </tbody></table>
                </div>
            </div>
            <!-- /.col -->
            </div>
            <!-- /.row -->

            <!-- this row will not appear when printing -->
            <div class="row no-print">
            <div class="col-12">
                <a href="invoice-print.html" target="_blank" class="btn btn-default"><i class="fas fa-print"></i> Print</a>
                <button type="button" class="btn btn-success float-right"><i class="far fa-credit-card"></i> Submit
                Payment
                </button>
                <button type="button" class="btn btn-primary float-right" style="margin-right: 5px;">
                <i class="fas fa-download"></i> Generate PDF
                </button>
            </div>
            </div>
        </div>
        <!-- /.invoice -->
        </div><!-- /.col -->
    </div>

@endsection
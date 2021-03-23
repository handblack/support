<html>
    <head>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Oxygen+Mono&display=swap" rel="stylesheet">    
    <style>
        .voucher {
            font-family: 'Oxygen Mono', monospace;
            font-size:11px;
        }
        .table tbody>tr>td:last-of-type{
            padding-left:0px;
        }

 
        .page-break {
            page-break-after: always;
        }

        @page {
            margin: 0cm 0cm;
            font-family: 'Roboto', sans-serif,'Arial';
            font-size:11px;
        }

        body {
            margin: 2.9cm 1cm 1.5cm;
            margin-top:2.9cm;
            margin-left:1.5cm;
            margin-right:1cm; 
            font-size:10px;
            font-family: 'Roboto', sans-serif;
        }
        header {
            position: fixed;
            top: 0cm;
            left: 0cm;
            right: 0cm;
            height: 2.3cm;            
            padding-left: 1.5cm;
            padding-right: 1cm;
            padding-top:0.5cm;
            /*
            padding-left: 1.5cm;
            background-color: #007bff;
            line-height: 30px;
            border: 1px solid #dcdcdc;
            */
            color: #000;
            text-align: left;
        }

        footer {
            position: fixed;
            bottom: 0cm;
            left: 1.5cm;
            right: 1.2cm;
            height: 1.1cm;
            background-color: #fff;
            color: #4C4C4C;
            text-align: left;
            line-height: 10px;
            border-top:1px solid #dcdcdc;
            font-size:10px;
        }
        .text-right{text-align: right;}
        .text-center{text-align: center;}
        .text-left{text-align: left;}

        table { 
            /*
            border-spacing: 5px;
            */
            border-collapse: collapse;
        }
        td { 
            /*padding: 2px;*/
        }

       
        br {
            display: block; /* makes it have a width */
            content: ""; /* clears default height */
            margin-top: 0; /* change this to whatever height you want it */
        }

        /* Thick red border */
        hr {
            border-top: 1px solid rgb(65, 65, 65);
        }
        .xx td{
            border:1px solid #dcdcdc;
        }
        </style>
    </head>
    <body>
        <header>
            @yield('header')
        </header>
        
        <main>
            @yield('container')
        </main>
        
        <footer>
            MiaSoftware Network
            <br>soporte@miasoftware.net
            @yield('footer')
        </footer>
        
        
        <script type="text/php">
            if ( isset($pdf) ) {
                $pdf->page_script('
                $font = $fontMetrics->get_font("Arial, Helvetica, sans-serif", "normal");
                $pdf->text(500, 810, "Pagina $PAGE_NUM de $PAGE_COUNT", $font, 7);
                ');
            }
        </script>
    </body>
</html>
<html>
    <head>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
        <style>
            .page-break {
                page-break-after: always;
            }
            @page {
                margin: 0cm 0cm;
                font-family: 'Roboto', sans-serif,'Arial';
                font-size:12px;
            }

            body {
                margin: 2cm 1.5cm 1.5cm;
                font-size:10px;
                font-family: 'Roboto', sans-serif;
            }
            header {
                position: fixed;
                top: 1cm;
                left: 0cm;
                right: 0cm;
                height: 2cm;
                padding-left: 1.5cm;
                background-color: #007bff;
                color: white;
                text-align: left;
                line-height: 30px;
            }

            footer {
                position: fixed;
                bottom: 0cm;
                left: 1.5cm;
                right: 1.5cm;
                height: 1.1cm;
                background-color: #fff;
                color: #4C4C4C;
                text-align: left;
                line-height: 10px;
                border-top:1px solid #dcdcdc;
            }
            .text-right{text-align: left;}

            table { 
                border-spacing: 5px;
                border-collapse: collapse;
            }
            td { 
                padding: 5px;
            }

            .table table, td, th {
            border: 1px solid #dcdcdc;
            }
            br {
            display: block; /* makes it have a width */
            content: ""; /* clears default height */
            margin-top: 0; /* change this to whatever height you want it */
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
            http://warehouse.gruposbf.pe
            <br>soporte@miasoftware.net
            @yield('footer')
        </footer>
        
        
        <script type="text/php">
            if ( isset($pdf) ) {
                $pdf->page_script('
                $font = $fontMetrics->get_font("Arial, Helvetica, sans-serif", "normal");
                $pdf->text(500, 810, "Pagina $PAGE_NUM de $PAGE_COUNT", $font, 8);
                ');
            }
        </script>
    </body>
</html>
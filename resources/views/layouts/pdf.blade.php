<html>
    <head>
    <style>
        .page-break {
            page-break-after: always;
        }
        @page {
            margin: 0cm 0cm;
            font-family: Arial;
        }

        body {
            margin: 3cm 2cm 2cm;
        }
        header {
            position: fixed;
            top: 0cm;
            left: 0cm;
            right: 0cm;
            height: 2cm;
            background-color: #2a0927;
            color: white;
            text-align: center;
            line-height: 30px;
        }

        footer {
            position: fixed;
            bottom: 0cm;
            left: 0cm;
            right: 0cm;
            height: 2cm;
            background-color: #2a0927;
            color: white;
            text-align: center;
            line-height: 35px;
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
            @yield('footer')
        </footer>
        
        
        <script type="text/php">
            if ( isset($pdf) ) {
                $pdf->page_script('
                $font = $fontMetrics->get_font("Arial, Helvetica, sans-serif", "normal");
                $pdf->text(270, 730, "Pagina $PAGE_NUM de $PAGE_COUNT", $font, 10);
                ');
            }
        </script>
    </body>
</html>
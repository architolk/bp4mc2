@echo off
echo Creating concatenated file O...
powershell -Command "$myFile = (gc 'Testdata concepten local.ttl') -replace 'http://localhost:8080', 'http://data.ontwikkeling.pdok.nl'; [System.IO.File]::WriteAllLines('Testdata concepten O.ttl', $myFile)"
echo Creating concatenated file T...
powershell -Command "$myFile = (gc 'Testdata concepten local.ttl') -replace 'http://localhost:8080', 'http://data.test.pdok.nl'; [System.IO.File]::WriteAllLines('Testdata concepten T.ttl', $myFile)"
echo Creating concatenated file A...
powershell -Command "$myFile = (gc 'Testdata concepten local.ttl') -replace 'http://localhost:8080', 'http://data.acceptatie.pdok.nl'; [System.IO.File]::WriteAllLines('Testdata concepten A.ttl', $myFile)"
echo Whoohoo! All done!
pause
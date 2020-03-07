if (-not (Get-Module -ListAvailable -Name PSHTML)) {
    Install-Module -Name PSHTML
    Import-Module -Name PSHTML
}

$prefix = "<!-- poshapp: 100%x420 -->"

$page = html {
    body {

        h1 "PSHTML Graph"

        canvas -Height 400px -Width 400px -Id "graph" {}

        script -src "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js" -type "text/javascript"

        script -content {

            $Data1 = @(34,7,11,19)

            $Labels = @("Closed","Unresolved","Pending","Open")

            $dsb1 = New-PSHTMLChartBarDataSet -Data $data1 -label "March" -BackgroundColor LightGreen

            New-PSHTMLChart -type bar -DataSet $dsb1 -title "Ticket Statistics" -Labels $Labels -CanvasID "graph"

        }
    }
}

"$prefix$page"
<# 
.NAME
    Disconnect-Tool
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(400,400)
$Form.text                       = "Disconnect-Tool"
$Form.TopMost                    = $false
$Form.FormBorderStyle            = "FixedDialog"
$Form.MaximizeBox                = $false
$Form.MinimizeBox                = $false
$Form.StartPosition              = "CenterScreen"

$iconBase64      = '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'
$iconBytes       = [Convert]::FromBase64String($iconBase64)
$stream          = New-Object IO.MemoryStream($iconBytes, 0, $iconBytes.Length)
$stream.Write($iconBytes, 0, $iconBytes.Length);
$iconImage       = [System.Drawing.Image]::FromStream($stream, $true)
$Form.Icon       = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())

$Staus_Label                     = New-Object system.Windows.Forms.Label
$Staus_Label.text                = "Status:"
$Staus_Label.AutoSize            = $true
$Staus_Label.width               = 25
$Staus_Label.height              = 10
$Staus_Label.location            = New-Object System.Drawing.Point(80,59)
$Staus_Label.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Staus_Indicator_Label           = New-Object system.Windows.Forms.Label
$Staus_Indicator_Label.text      = "Online"
$Staus_Indicator_Label.AutoSize  = $true
$Staus_Indicator_Label.width     = 25
$Staus_Indicator_Label.height    = 10
$Staus_Indicator_Label.location  = New-Object System.Drawing.Point(252,59)
$Staus_Indicator_Label.Font      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Staus_Indicator_Label.ForeColor  = [System.Drawing.ColorTranslator]::FromHtml("#00ff00")

$Adapter_CB                      = New-Object system.Windows.Forms.ComboBox
$Adapter_CB.width                = 100
$Adapter_CB.height               = 20
$Adapter_CB.location             = New-Object System.Drawing.Point(56,161)
$Adapter_CB.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Time_TB                         = New-Object system.Windows.Forms.TextBox
$Time_TB.multiline               = $false
$Time_TB.text                    = "0"
$Time_TB.width                   = 100
$Time_TB.height                  = 20
$Time_TB.location                = New-Object System.Drawing.Point(228,161)
$Time_TB.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$UP_BT                           = New-Object system.Windows.Forms.Button
$UP_BT.text                      = "UP"
$UP_BT.width                     = 60
$UP_BT.height                    = 30
$UP_BT.location                  = New-Object System.Drawing.Point(247,125)
$UP_BT.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$UP_BT.Add_Click{ Set-Time-UP }


$DOWN_BT                         = New-Object system.Windows.Forms.Button
$DOWN_BT.text                    = "DOWN"
$DOWN_BT.width                   = 60
$DOWN_BT.height                  = 30
$DOWN_BT.location                = New-Object System.Drawing.Point(247,185)
$DOWN_BT.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$DOWN_BT.Add_Click{ Set-Time-DOWN  }

$EXIT_BT                         = New-Object system.Windows.Forms.Button
$EXIT_BT.text                    = "EXIT"
$EXIT_BT.width                   = 60
$EXIT_BT.height                  = 30
$EXIT_BT.location                = New-Object System.Drawing.Point(247,255)
$EXIT_BT.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$EXIT_BT.Add_Click{ $Form.Close() }

$GO_BT                           = New-Object system.Windows.Forms.Button
$GO_BT.text                      = "GO"
$GO_BT.width                     = 60
$GO_BT.height                    = 30
$GO_BT.location                  = New-Object System.Drawing.Point(77,255)
$GO_BT.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$GO_BT.Add_Click{ Disconnect-Sleep }

$ProgressBar                     = New-Object system.Windows.Forms.ProgressBar
$ProgressBar.width               = 369
$ProgressBar.height              = 60
$ProgressBar.location            = New-Object System.Drawing.Point(15,324)

$Adapter_Label                   = New-Object system.Windows.Forms.Label
$Adapter_Label.text              = "Adapter"
$Adapter_Label.AutoSize          = $true
$Adapter_Label.width             = 25
$Adapter_Label.height            = 10
$Adapter_Label.location          = New-Object System.Drawing.Point(83,138)
$Adapter_Label.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Time_Label                      = New-Object system.Windows.Forms.Label
$Time_Label.text                 = "Time:"
$Time_Label.AutoSize             = $true
$Time_Label.width                = 25
$Time_Label.height               = 10
$Time_Label.location             = New-Object System.Drawing.Point(193,163)
$Time_Label.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Form.controls.AddRange(@($Staus_Label,$Staus_Indicator_Label,$Adapter_CB,$Time_TB,$UP_BT,$DOWN_BT,$EXIT_BT,$GO_BT,$ProgressBar,$Adapter_Label,$Time_Label))

#vars
Set-Variable -Name RunStatus -Value $false -Scope Global

#region Logic 

## Get and list adapter
$Adapter = (Get-NetAdapter).Name
foreach($A in $Adapter){
    $Adapter_CB.Items.Add($A)
}

function Set-Time-UP {
    [Int]$Time = $Time_TB.text
    [Int]$NewTime = $time + 1
    $Time_TB.text = $NewTime
}

function Set-Time-DOWN {
    [Int]$Time = $Time_TB.text
    [Int]$NewTime = $time - 1
    $Time_TB.text = $NewTime
}

function Set-Status {
    if ($RunStatus -eq $true) {
        $Staus_Indicator_Label.text      = "Offline"
        $Staus_Indicator_Label.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FF0000")
    }
    else {
        $Staus_Indicator_Label.text      = "Online"
        $Staus_Indicator_Label.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#00ff00")
    }
}

function Disconnect-Sleep {

    $ProgressBar.Maximum = [Int]$Time_TB.text
    $ProgressBar.Step = 1
    $ProgressBar.Value = 1

    Set-Variable -Name RunStatus -Value $true -Scope Global

    Set-Status

    Disable-NetAdapter -Name $Adapter_CB.Text -Confirm:$false

    $i = 1

    while($i -le [Int]$Time_TB.text){
        Start-Sleep -Seconds 1
        $ProgressBar.PerformStep()
        $i++
    }

    Enable-NetAdapter -Name $Adapter_CB.Text -Confirm:$false

    Set-Variable -Name RunStatus -Value $false -Scope Global

    Start-Sleep -Seconds 1
    $ProgressBar.Value = 0

    Set-Status


}

#endregion

[void]$Form.ShowDialog()
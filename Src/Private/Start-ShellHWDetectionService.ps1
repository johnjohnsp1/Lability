function Start-ShellHWDetectionService {
<#
    .SYNOPSIS
        Starts the ShellHWDetectionService - if present!
#>
    [CmdletBinding()]
    param ( )
    process {
        if (Get-Service -Name 'ShellHWDetection' -ErrorAction SilentlyContinue) {
            Stop-Service -Name 'ShellHWDetection' -Force -ErrorAction Ignore;
        }
    } #end process
} #end function Start-ShellHWDetectionService
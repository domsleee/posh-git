param([bool]$ForcePoshGitPrompt, [bool]$UseLegacyTabExpansion, [bool]$EnableProxyFunctionExpansion)

if (Test-Path Env:\POSHGIT_ENABLE_STRICTMODE) {
    # Set strict mode to latest to help catch scripting errors in the module. This is done by the Pester tests.
    Set-StrictMode -Version Latest
}

# . $PSScriptRoot\CheckRequirements.ps1 > $null

#. $PSScriptRoot\ConsoleMode.ps1
. $PSScriptRoot\Utils.ps1
#. $PSScriptRoot\AnsiUtils.ps1
#. $PSScriptRoot\WindowTitle.ps1
. $PSScriptRoot\PoshGitTypes.ps1
. $PSScriptRoot\GitUtils.ps1
# . $PSScriptRoot\GitPrompt.ps1
. $PSScriptRoot\GitParamTabExpansion.ps1
. $PSScriptRoot\GitTabExpansion.ps1
# . $PSScriptRoot\TortoiseGit.ps1


$exportModuleMemberParams = @{
    Function = @(
        'Add-PoshGitToProfile',
        'Expand-GitCommand',
        'Format-GitBranchName',
        'Get-GitBranchStatusColor',
        'Get-GitDirectory',
        'Get-GitStatus',
        'Get-PromptConnectionInfo',
        'Get-PromptPath',
        'New-GitPromptSettings',
        'Remove-GitBranch',
        'Remove-PoshGitFromProfile',
        'Update-AllBranches',
        'Write-GitStatus',
        'Write-GitBranchName',
        'Write-GitBranchStatus',
        'Write-GitIndexStatus',
        'Write-GitStashCount',
        'Write-GitWorkingDirStatus',
        'Write-GitWorkingDirStatusSummary',
        'Write-Prompt',
        'Write-VcsStatus',
        'TabExpansion',
        'tgit'
    )
    Variable = @(
        'GitPromptScriptBlock'
    )
}

Export-ModuleMember @exportModuleMemberParams

Write-Host "Description: "
$description=Read-Host
Write-Host "Homepage: "
$homepage=Read-Host
Write-Host "Binary: "
$bin=Read-Host
Write-Host "Shortcut Name: "
$shortcut=Read-Host

$version="lol"
$template = "`{
    `"description`": `"$description`",
    `"version`": `"$version`",
    `"homepage`": `"$homepage`",
    `"bin`": `"$bin`",
    `"checkver`": `"github`",
    `"shortcuts`": [
        [
            `"$bin`",
            `"$shortcut`"
        ]
    ],
    `"architecture`": {
        `"64bit`": {
            `"url`": `"$homepage/releases/download/v$version/pyfa-v$version-win.zip`",
            `"hash`": `"FE8DDBB076D70FEC15A3995617A037E4587571EF087DD61570BCE4D730538B52`"
        }
    },
    `"autoupdate`": {
        `"architecture`": {
            `"64bit`": {
                `"url`": `"$homepage/releases/download/`$version/Pyfa-`$version-win.zip`"
            }
        }
    }
}
"
Write-Output $template
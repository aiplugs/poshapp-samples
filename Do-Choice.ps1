$title = "確認"
$message = @"
この操作を実行しますか?
対象 "C:\demo\PromptForChoice\hoge.txt" に対して操作 "ファイルの削除" を実行しています。
"@

$tChoiceDescription = "System.Management.Automation.Host.ChoiceDescription"
$options = @(
    New-Object $tChoiceDescription ("はい(&Y)",       "操作の次のステップのみを続行します。")
    New-Object $tChoiceDescription ("すべて続行(&A)", "操作のすべてのステップを続行します。")
    New-Object $tChoiceDescription ("いいえ(&N)",     "この操作をスキップし、次の操作に進みます。")
    New-Object $tChoiceDescription ("すべて無視(&L)", "この操作および後続のすべての操作をスキップします。")
    New-Object $tChoiceDescription ("中断(&S)",        "現在のコマンドを中断し、コマンドプロンプトに戻ります。")
)

$result = $host.ui.PromptForChoice($title, $message, $options, 0)
switch ($result)
{
    0 {"「はい」が選ばれました。"; break}
    1 {"「すべて続行」が選ばれました。"; break}
    2 {"「いいえ」が選ばれました。"; break}
    3 {"「すべて無視」が選ばれました。"; break}
    4 {"「中断」が選ばれました。"; break}
}
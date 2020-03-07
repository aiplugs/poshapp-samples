$title = "Confirm"
$message = "Are you sure you want to proceed?"

$tChoiceDescription = "System.Management.Automation.Host.ChoiceDescription"
$options = @(
    New-Object $tChoiceDescription ("Yes(&Y)",        "Continue with only the next step of the operation.")
    New-Object $tChoiceDescription ("Yes to All(&A)", "Continue with all the steps of the operation.")
    New-Object $tChoiceDescription ("No(&N)",         "Skip this operation and proceed with the next operation.")
    New-Object $tChoiceDescription ("No to All(&L)",  "Skip this operation and all subsequent operations.")
    New-Object $tChoiceDescription ("Suspend(&S)",    "Pause the current pipeline and return to the command prompt.")
)

$result = $host.ui.PromptForChoice($title, $message, $options, 0)
switch ($result)
{
    0 { "'Yes' is selected";        break }
    1 { "'Yes to All' is selected"; break }
    2 { "'No' is selected";         break }
    3 { "'No to All' is selected";  break }
    4 { "'Suspend' is selected";    break }
}
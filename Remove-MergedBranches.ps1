function Remove-MergedBranches
{
	git branch --merged | ?{-not $_.trim().indexOf("*") -eq 0} | %{git branch -d $_.trim()}
}

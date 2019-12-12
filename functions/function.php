<?php

function copyright($startyear)
{
	$currentyear=date('Y');
	if ($startyear <$currentyear) {
		return "&copy;$startyear &ndash;$currentyear";
	}else{
		return "$startyear";
	}

}
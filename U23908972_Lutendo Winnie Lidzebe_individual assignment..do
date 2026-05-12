clear all
set more off
capture log close

pwd
cd "C:\Users\Lutendo\Desktop\individual assignment"

log using "u23908972_Lutendo Winnie Lidzebe_individual assignment.log", replace

import excel "C:\Users\Lutendo\Desktop\individual assignment\Exceldataset.xlsx", sheet("Sheet1") firstrow case(lower) 

save "C:\Users\Lutendo\Desktop\individual assignment\u23908972_Lutendo Winnie Lidzebe_individual assignment.dta", replace 

browse  

*QUESTION 1
gen pcinc = income/householdsize 

*QUESTION 2
label var pcinc "Per Capita Income" 

*QUESTION 3
sum pcinc 

*QUESTION 4
mean pcinc 

*QUESTION 5
sort region 
by region: sum pcinc

ttest pcinc, by (region) 

*QUESTION 6
generate pline = 100
label var pline "poverty line" 

generate q=0

replace q=1 if pcinc < pline 
label var q "headcount"
tab q 

*QUESTION 7 
gen pg = q*((pline - pcinc)/pline)^1
summarize pg  

gen pg2 = q*((pline - pcinc)/pline)^2
mean pg2 

*QUESTION 8

net from http://dasp.ecn.ulaval.ca/dasp3
	net install dasp_p1, force
	net install dasp_p2, force
	net install dasp_p3, force
	net install dasp_p4, force
	net install dasp_p5, force
	net install dasp_p6, force
	cap adddmenu profile.do _daspmenu
	cap add_data_examples
	
	*QUESTION 8
	
	ifgt pcinc, alpha(0) pline(100)
	ifgt pcinc, alpha(1) pline(100) 
	
	*QUESTION 9
	
	gen hr = q*((pline-pcinc)/pline)^0
summarize hr
tabulate region, sum(hr) means 

log close
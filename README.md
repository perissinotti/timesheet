#Timesheet -Track your work time- 
Timesheet is a BASH script to accurately track your worktime. It generates a csv file containing, date, task and duration. 

Clone the repository using git

```bash
git clone https://github.com/perissinotti/timesheet.git
```

or download the script manually

## Usage

* Give the execution permission to the script and run it:

```bash
$chmod +x timesheet.sh
$./timesheet.sh
```
* Once you finish with your task press "q", enter letter c for work done with "clients" or letter t for training.  
* For Training/other selection -> input the required prompts and press enter, it will then generate a csv file (timesheet.csv) and it will add a line each time you execute it.
* For Client selection -> input the required prompts and press enter, it will then generate a csv file (timesheet.csv) and it will add a line each time you execute it.
 
#importCSV_googleAppsScript -Import your data (CSV format) to Google Spreadsheets-

Is sample code to Import data from a csv file in your Drive into an existing Google Sheet using Google Apps Script, replacing/appending data as needed.
It assumes that: 
* a) you have a designated folder in your Drive where the CSV file is saved/uploaded to; 
* b) the CSV file is named "timesheets.csv" and the data in it comma-delimited; and 
* c) the CSV data is imported into a designated spreadsheet. See comments in code for further details.

##Usage
1-Visit "scripts.google.com"
2-Copy the code in the script editor
3-execute the script, either click the arrow or select the menu item Run > "function name"
A dialog box will appear and tell you that the script requires authorization. Click Continue. A second dialog box will then request authorization for specific Google services. Read the notice carefully, then click Accept.
 
You can then create time-driven trigger in your script project to run importData() function on a regular basis (e.g. every night at 1AM), so all you have to do is put new timesheet.csv file into the designated Drive folder, and it will be automatically processed on next scheduled run.                                    

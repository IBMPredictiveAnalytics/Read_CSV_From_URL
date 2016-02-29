# Read CSV From URL
##### Description:

This node allows you to read data in a csv format on a web page directly into IBM SPSS Modeler.  Many dataset repositories make data available in this format and they often provide a URL containing the data.  Copy a URL into this node and it can read the file for you without manually downloading it.



---

##### User Interface:

This node has one tab with details on reading the data.  The most commonly adjusted parameters are found on the left side of this tab.  Here you can paste the URL containing the data.  The headers in file checkbox allows you to check the box if your data has headers, or column names, in the first row.  The delimiter can be changed to another value, rather than a comma, by typing it in the Enter delimiter box.  

On the right side of this tab, there are more advanced settings for reading in files.  
- Strip leading or trailing whitespace – if checked will remove white space from the start and end of unquoted characters
- Fill – if rows have unequal length, blank fields are added
- Number of lines to skip in file – node will skip this number of lines before reading the data
- Maximum number of rows to be read in
- NA String Values (strings which are to be interpreted as NA values) – these values will be read into SPSS Modeler as Null values

![dialog](https://raw.githubusercontent.com/IBMPredictiveAnalytics/Read_CSV_From_URL/master/Screenshot/Dialog.png)

---
Requirements
----
- IBM SPSS Modeler v16 or later
- ‘R Essentials for SPSS Modeler’ plugin: [Download here][5]
-  R 2.15.x or R 3.1 ([Use this link][5] to find the correct version)

---
Installation instructions
----
1. Download the extension: [Download][6]  (Click "View Raw" to download)
2. Close IBM SPSS Modeler. Save the .cfe file in the CDB directory, located by default on Windows in "C:\ProgramData\IBM\SPSS\Modeler\version\CDB" or under your IBM SPSS Modeler installation directory.  Note: this is a hidden directory, so you need to type it in manually or copy/paste the file path.
3. Restart IBM SPSS Modeler, the node will now appear in the Output palette.

---
R Packages used
----
The R packages will be installed the first time the node is used as long as an Internet connection is available.

- [RCurl][4]

---
Documentation and samples
----
- Find a PDF with the documentation of this extension in the [Documentation][2] directory
- There is a sample available in the [Example][3] directory


---
License
----

[Apache 2.0][1]


Contributors
----

  - Greg Filla ([gdfilla](https://twitter.com/gdfilla))


[1]: http://www.apache.org/licenses/LICENSE-2.0.html
[2]: https://github.com/IBMPredictiveAnalytics/Read_CSV_From_URL/tree/master/Documentation
[3]: https://github.com/IBMPredictiveAnalytics/Read_CSV_From_URL/tree/master/Example
[4]: https://cran.r-project.org/web/packages/RCurl/
[5]: https://developer.ibm.com/predictiveanalytics/downloads/
[6]: https://github.com/IBMPredictiveAnalytics/Read_CSV_From_URL/blob/master/Source%20code/readcsvfromurl.cfe
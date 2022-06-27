*** Settings ***
Library         CSVLib
Force tags      1.0

*** Test Cases ***
Read_CSV
    [documentation]     CSV Feature
    [tags]              1.0.1
    ${singlelist}=		Read CSV As Single List		test.csv
	log to console		singleList: ${singlelist}

Read_CSV_as_list
    [documentation]     CSV Feature
    [tags]              1.0.2
	${list}=		    read csv as list		    test_dict.csv
	log to console		list: ${list}

Read_CSV_as_Dictionary
    [documentation]     CSV Feature
    [tags]              1.0.3
	${dict}=		    Read Csv As Dictionary    	test_dict.csv		  Mobile     Computer
	log to console		dict: ${dict}

Read_CSV_as_Dictionary_1
    [documentation]     CSV Feature
    [tags]              1.0.4
	${value}=		    create list			        Legs			    Eyes
	${dictWList}=		read csv as dictionary		test_dict1.csv		Animal		${value}
	log to console		dictWList: ${dictWList}

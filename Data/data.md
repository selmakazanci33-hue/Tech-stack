


{"datasource":{"address":"LocalHost","title":"MAIN","id":"aLOCALHOST_aMAIN","database":"aMAIN","fullname":"LocalHost/MAIN"},"metadata":[{"jaql":{"table":"enrollment","column":"benefit_end_date","dim":"[enrollment.benefit_end_date (Calendar)]","datatype":"datetime","columnTitle":"benefit_end_date","tableTitle":"enrollment","merged":true,"level":"months","title":"Months in benefit_end_date"},"instanceid":"CD659-BDAD-98","panel":"measures","hierarchies":["calendar"],"format":{"mask":{"years":"yyyy","quarters":"yyyy Q","months":"MM/yyyy","weeks":"ww yyyy","days":"shortDate","minutes":"HH:mm","seconds":"MM/dd/yyyy HH:mm:ss","dateAndTime":"MM/dd/yyyy HH:mm","isdefault":true}}},{"jaql":{"table":"enrollment","column":"id","dim":"[enrollment.id]","datatype":"numeric","columnTitle":"id","tableTitle":"enrollment","merged":true,"title":"Count","agg":"count"},"instanceid":"907D0-F089-33","panel":"measures","format":{"mask":{"abbreviations":{"t":false,"b":false,"m":false,"k":false},"decimals":"auto","number":{"separated":true},"abbreviateAll":false},"color":{"color":"#03738C","colorIndex":0,"type":"color"}}},{"jaql":{"table":"enrollment","column":"enrollment_status_description","dim":"[enrollment.enrollment_status_description]","datatype":"text","columnTitle":"enrollment_status_description","tableTitle":"enrollment","merged":true,"isPrimary":false,"isDashboardFilter":false,"datasource":{"title":"MAIN","fullname":"LocalHost/MAIN","id":"aLOCALHOST_aMAIN","address":"LocalHost","database":"aMAIN"},"locale":"en-us","title":"enrollment_status_description","collapsed":true,"filter":{"explicit":true,"multiSelection":true,"members":["Terminated"]}},"instanceid":"F4F27-C806-CA","panel":"scope"},{"jaql":{"table":"enrollment","column":"benefit_end_date","dim":"[enrollment.benefit_end_date (Calendar)]","datatype":"datetime","columnTitle":"benefit_end_date","tableTitle":"enrollment","merged":true,"level":"days","title":"Months in benefit_end_date","datasource":{"address":"LocalHost","title":"MAIN","id":"aLOCALHOST_aMAIN","database":"aMAIN","fullname":"LocalHost/MAIN"},"firstday":"mon","locale":"en-us","collapsed":true,"filter":{"from":"2026-11-01","to":"2028-01-01","multiSelection":true}},"instanceid":"65C91-DFB3-D4","panel":"scope","format":{"mask":{"years":"yyyy","quarters":"yyyy Q","months":"MM/yyyy","weeks":"ww yyyy","days":"shortDate","minutes":"HH:mm","seconds":"MM/dd/yyyy HH:mm:ss","dateAndTime":"MM/dd/yyyy HH:mm","isdefault":true}},"title":"Months in benefit_end_date"},{"jaql":{"table":"ssap_applications","column":"coverage_year","dim":"[ssap_applications.coverage_year]","datatype":"numeric","datasource":{"address":"LocalHost","title":"MAIN","id":"localhost_aMAIN","database":"aMAIN","fullname":"localhost/MAIN","live":false},"firstday":"mon","locale":"en-us","title":"coverage_year","collapsed":true,"isDashboardFilter":true,"columnTitle":"coverage_year","tableTitle":"ssap_applications","filter":{"explicit":true,"multiSelection":true,"members":["2027"]}},"disabled":falShow more


{
    "headers": [
        "Months in benefit_end_date",
        "Count"
    ],
    "metadata": [
        {
            "jaql": {
                "datatype": "datetime",
                "level": "months",
                "column": "benefit_end_date",
                "merged": true,
                "dim": "[enrollment.benefit_end_date (Calendar)]",
                "title": "Months in benefit_end_date",
                "columnTitle": "benefit_end_date",
                "table": "enrollment",
                "tableTitle": "enrollment"
            },
            "instanceid": "CD659-BDAD-98",
            "hierarchies": [
                "calendar"
            ],
            "format": {
                "mask": {
                    "seconds": "MM/dd/yyyy HH:mm:ss",
                    "months": "MM/yyyy",
                    "weeks": "ww yyyy",
                    "dateAndTime": "MM/dd/yyyy HH:mm",
                    "minutes": "HH:mm",
                    "quarters": "yyyy Q",
                    "days": "shortDate",
                    "isdefault": true,
                    "years": "yyyy"
                }
            },
            "panel": "measures"
        },
        {
            "jaql": {
                "agg": "count",
                "datatype": "numeric",
                "column": "id",
                "merged": true,
                "dim": "[enrollment.id]",
                "title": "Count",
                "columnTitle": "id",
                "table": "enrollment",
                "tableTitle": "enrollment"
            },
            "instanceid": "907D0-F089-33",
            "format": {
                "color": {
                    "color": "#03738C",
                    "colorIndex": 0,
                    "type": "color"
                },
                "mask": {
                    "number": {
                        "separated": true
                    },
                    "decimals": "auto",
                    "abbreviateAll": false,
                    "abbreviations": {
                        "b": false,
                        "t": false,
                        "k": false,
                        "m": false
                    }
                }
            },
            "panel": "measures"
        }
    ],
    "datasource": {
        "revisionId": "TBD",
        "fullname": "LocalHost/MAIN"
    },
    "processingInfo": {
        "cacheType": "none",
        "cacheTime": "2026-11-08T21:32:38.411Z"
    },
    "translationInfo": {
        "translationServiceProvider": "NewTranslationService",
        "isTranslationFallback": false,
        "isQueryFallback": false,
        "isAeMode": false,
        "translationStrategy": "NEW_THEN_OLD",
        "translationDuration": 0.001,
        "sqlFromCache": true
    },
    "values": []
}

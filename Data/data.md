


{"datasource":{"address":"LocalHost","title":"MAIN","id":"aLOCALHOST_aMAIN","database":"aMAIN","fullname":"LocalHost/MAIN"},"metadata":[{"jaql":{"table":"enrollment","column":"last_update_timestamp","dim":"[enrollment.last_update_timestamp (Calendar)]","datatype":"datetime","columnTitle":"last_update_timestamp","tableTitle":"enrollment","merged":true,"level":"days","title":"Date"},"instanceid":"C5D1C-321B-FB","panel":"rows","format":{"mask":{"years":"yyyy","quarters":"yyyy Q","months":"MM/yyyy","weeks":"ww yyyy","days":"shortDate","minutes":"HH:mm","seconds":"MM/dd/yyyy HH:mm:ss","dateAndTime":"MM/dd/yyyy HH:mm","isdefault":true}},"hierarchies":["calendar"]},{"jaql":{"type":"measure","formula":"(count([C51CF-4C5]),[ADECC-EB1])","context":{"[ADECC-EB1]":{"dimension":{"table":"enrollment","column":"last_update_timestamp","dim":"[enrollment.last_update_timestamp (Calendar)]","datatype":"datetime","merged":true,"level":"days","title":"Days in last_update_timestamp","sort":"desc","sortDetails":{"field":0,"dir":"desc","sortingLastDimension":true,"initialized":true,"isLastApplied":true}},"table":"enrollment","column":"enrollment_status_description","dim":"[enrollment.enrollment_status_description]","datatype":"text","merged":true,"title":"enrollment_status_description","datasource":{"fullname":"localhost/MAIN","id":"localhost_aMAIN","address":"LocalHost","database":"aMAIN","live":false,"title":"MAIN"},"firstday":"mon","locale":"en-us","filter":{"explicit":true,"multiSelection":true,"members":["Cancelled"]}},"[C51CF-4C5]":{"table":"enrollment","column":"id","dim":"[enrollment.id]","datatype":"numeric","merged":true,"title":"Id"}},"title":"Cancelled Policies","columnTitle":"(count([Id]),[enrollment_status_description])"},"instanceid":"F6EB0-A440-16","panel":"measures","format":{"mask":{"abbreviations":{"t":false,"b":false,"m":false,"k":false},"decimals":"auto","number":{"separated":true},"abbreviateAll":false},"color":{"color":"#03738C","colorIndex":0,"type":"color"}},"disabled":false},{"jaql":{"type":"measure","formula":"(count([321CA-B85]),[60349-AFB])","context":{"[60349-AFB]":{"dimension":{"table":"enrollment","column":"last_update_timestamp","dim":"[enrollment.last_update_timestamp (Calendar)]","datatype":"datetime","merged":true,"level":"days","title":"Days in last_update_timestamp","sort":"desc","sortDetails":{"field":0,"dir":"desc","sortingLastDimension":true,"initialized":true,"isLastApplied":true}},"table":"enrollment","column":"enrollment_status_description","dim":"[enrollment.enrollment_status_description]","datatype":"text","merged":true,"title":"enrollment_status_description","datasource":{"fullname":"localhost/MAIN","id":"localhost_aMAIN","address":"LocalHost","database":"aMAIN","live":false,"title":"MAIN"},"firstday":"mon","locale":"en-us","filter":{"startsWith":"Term","isBetween":false}},"[321CA-B85]":{"table":"enrollment","column":"id","dim":"[enrollment.id]","datatype":"numeric","merged":true,"title":"Id"}},"title":"Terminated Policies"Show more


{
    "headers": [
        "Date",
        "Cancelled Policies",
        "Terminated Policies"
    ],
    "metadata": [
        {
            "jaql": {
                "datatype": "datetime",
                "level": "days",
                "column": "last_update_timestamp",
                "merged": true,
                "dim": "[enrollment.last_update_timestamp (Calendar)]",
                "title": "Date",
                "columnTitle": "last_update_timestamp",
                "table": "enrollment",
                "tableTitle": "enrollment"
            },
            "instanceid": "C5D1C-321B-FB",
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
            "panel": "rows"
        },
        {
            "jaql": {
                "context": {
                    "[C51CF-4C5]": {
                        "datatype": "numeric",
                        "column": "id",
                        "merged": true,
                        "dim": "[enrollment.id]",
                        "title": "Id",
                        "table": "enrollment"
                    },
                    "[ADECC-EB1]": {
                        "filter": {
                            "explicit": true,
                            "members": [
                                "Cancelled"
                            ],
                            "multiSelection": true
                        },
                        "datatype": "text",
                        "firstday": "mon",
                        "datasource": {
                            "database": "aMAIN",
                            "address": "LocalHost",
                            "fullname": "localhost/MAIN",
                            "id": "localhost_aMAIN",
                            "title": "MAIN",
                            "live": false
                        },
                        "column": "enrollment_status_description",
                        "merged": true,
                        "dim": "[enrollment.enrollment_status_description]",
                        "title": "enrollment_status_description",
                        "locale": "en-us",
                        "dimension": {
                            "sortDetails": {
                                "field": 0,
                                "isLastApplied": true,
                                "initialized": true,
                                "dir": "desc",
                                "sortingLastDimension": true
                            },
                            "datatype": "datetime",
                            "level": "days",
                            "column": "last_update_timestamp",
                            "merged": true,
                            "dim": "[enrollment.last_update_timestamp (Calendar)]",
                            "sort": "desc",
                            "title": "Days in last_update_timestamp",
                            "table": "enrollment"
                        },
                        "table": "enrollment"
                    }
                },
                "formula": "(count([C51CF-4C5]),[ADECC-EB1])",
                "type": "measure",
                "title": "Cancelled Policies",
                "columnTitle": "(count([Id]),[enrollment_status_description])"
            },
            "instanceid": "F6EB0-A440-16",
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
            "disabled": false,
            "panel": "measures"
        },
        {
            "jaql": {
                "context": {
                    "[60349-AFB]": {
                        "filter": {
                            "isBetween": false,
                            "startsWith": "Term"
                        },
                        "datatype": "text",
                        "firstday": "mon",
                        "datasource": {
                            "database": "aMAIN",
                            "address": "LocalHost",
                            "fullname": "localhost/MAIN",
                            "id": "localhost_aMAIN",
                            "title": "MAIN",
                            "live": false
                        },
                        "column": "enrollment_status_description",
                        "merged": true,
                        "dim": "[enrollment.enrollment_status_description]",
                        "title": "enrollment_status_description",
                        "locale": "en-us",
                        "dimension": {
                            "sortDetails": {
                                "field": 0,
                                "isLastApplied": true,
                                "initialized": true,
                                "dir": "desc",
                                "sortingLastDimension": true
                            },
                            "datatype": "datetime",
                            "level": "days",
                            "column": "last_update_timestamp",
                            "merged": true,
                            "dim": "[enrollment.last_update_timestamp (Calendar)]",
                            "sort": "desc",
                            "title": "Days in last_update_timestamp",
                            "table": "enrollment"
                        },
                        "table": "enrollment"
                    },
                    "[321CA-B85]": {
                        "datatype": "numeric",
                        "column": "id",
                        "merged": true,
                        "dim": "[enrollment.id]",
                        "title": "Id",
                        "table": "enrollment"
                    }
                },
                "formula": "(count([321CA-B85]),[60349-AFB])",
                "type": "measure",
                "title": "Terminated Policies",
                "columnTitle": "(count([Id]),[enrollment_status_description])"
            },
            "instanceid": "698E5-5749-72",
            "format": {
                "color": {
                    "color": "#03A65A",
                    "colorIndex": 1,
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
        "cacheTime": "2026-11-08T21:32:38.434Z"
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
    "values": [
        [
            {
                "data": "2026-11-01T00:00:00",
                "text": "012orADaAe"
            },
            {
                "data": 2534,
                "text": "2534"
            },
            {
                "data": "N\\A",
                "text": "N\\A"
            }
        ],
        [
            {
                "data": "2026-11-02T00:00:00",
                "text": "012orADaAe"
            },
            {
                "data": 5724,
                "text": "5724"
            },
            {
                "data": "N\\A",
                "text": "N\\A"
            }
        ],
        [
            {
                "data": "2026-11-03T00:00:00",
                "text": "012orADaAe"
            },
            {
                "data": 6752,
                "text": "6752"
            },
            {
                "data": "N\\A",
                "text": "N\\A"
            }
        ],
        [
            {
                "data": "2026-11-04T00:00:00",
                "text": "012orADaAe"
            },
            {
                "data": 6011,
                "text": "6011"
            },
            {
                "data": "N\\A",
                "text": "N\\A"
            }
        ],
        [
            {
                "data": "2026-11-05T00:00:00",
                "text": "012orADaAe"
            },
            {
                "data": 6057,
                "text": "6057"
            },
            {
                "data": "N\\A",
                "text": "N\\A"
            }
        ],
        [
            {
                "data": "2026-11-06T00:00:00",
                "text": "012orADaAe"
            },
            {
                "data": 5465,
                "text": "5465"
            },
            {
                "data": "N\\A",
                "text": "N\\A"
            }
        ],
        [
            {
                "data": "2026-11-07T00:00:00",
                "text": "012orADaAe"
            },
            {
                "data": 2802,
                "text": "2802"
            },
            {
                "data": "N\\A",
                "text": "N\\A"
            }
        ],
        [
            {
                "data": "2026-11-08T00:00:00",
                "text": "012orADaAe"
            },
            {
                "data": 871,
                "text": "871"
            },
            {
                "data": "N\\A",
                "text": "N\\A"
            }
        ]
    ]
}

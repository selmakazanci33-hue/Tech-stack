



{"datasource":{"address":"LocalHost","title":"MAIN","id":"aLOCALHOST_aMAIN","database":"aMAIN","fullname":"LocalHost/MAIN"},"metadata":[{"jaql":{"type":"measure","formula":"([48C99-5C0])","context":{"[48C99-5C0]":{"table":"enrollment","column":"id","dim":"[enrollment.id]","datatype":"numeric","title":"# of unique id","merged":true,"agg":"count"}},"columnTitle":"([# of unique id])","title":"Agent Assisted Enrollments"},"instanceid":"C795D-A70B-86","format":{"mask":{"type":"number","abbreviations":{"t":true,"b":true,"m":true,"k":false},"separated":true,"decimals":"auto","abbreviateAll":false,"isdefault":true},"color":{"color":"#03738C","colorIndex":0,"type":"color"}},"source":"value"},{"jaql":{"table":"enrollment","column":"broker_role","dim":"[enrollment.broker_role]","datatype":"text","title":"broker_role","merged":true,"isDashboardFilter":false,"datasource":{"title":"MAIN","fullname":"LocalHost/MAIN","id":"aLOCALHOST_aMAIN","address":"LocalHost","database":"aMAIN"},"locale":"en-us","collapsed":true,"filter":{"explicit":true,"multiSelection":true,"members":["AGENT"]}},"instanceid":"43C8D-E747-46","panel":"scope"},{"jaql":{"table":"brokers","column":"broker_name","dim":"[brokers.broker_name]","datatype":"text","title":"Agent Name (Designations/Certs)","merged":true,"isDashboardFilter":false,"datasource":{"title":"MAIN","fullname":"LocalHost/MAIN","id":"aLOCALHOST_aMAIN","address":"LocalHost","database":"aMAIN"},"locale":"en-us","collapsed":true,"filter":{"explicit":false,"multiSelection":true,"all":true}},"instanceid":"6B2A8-68B2-11","panel":"scope"},{"jaql":{"table":"brokers","column":"npn","dim":"[brokers.npn]","datatype":"text","title":"NPN (Designations/Certs)","merged":true,"isDashboardFilter":false,"datasource":{"title":"MAIN","fullname":"LocalHost/MAIN","id":"aLOCALHOST_aMAIN","address":"LocalHost","database":"aMAIN"},"locale":"en-us","collapsed":true,"filter":{"explicit":false,"multiSelection":true,"all":true}},"instanceid":"01231-F161-D6","panel":"scope"},{"jaql":{"table":"enrollment","column":"agent_broker_name","dim":"[enrollment.agent_broker_name]","datatype":"text","title":"Agent Name (Enrollments)","merged":true,"isDashboardFilter":false,"datasource":{"title":"MAIN","fullname":"LocalHost/MAIN","id":"aLOCALHOST_aMAIN","address":"LocalHost","database":"aMAIN"},"locale":"en-us","collapsed":true,"filter":{"explicit":false,"multiSelection":true,"all":true}},"instanceid":"EA474-6336-91","panel":"scope"},{"jaql":{"table":"enrollment","column":"enrollment_status_description","dim":"[enrollment.enrollment_status_description]","datatype":"text","title":"Enrollment Status","merged":true,"isDashboardFilter":false,"datasource":{"title":"MAIN","fullname":"LocalHost/MAIN","id":"aLOCALHOST_aMAIN","address":"LocalHost","database":"aMAIN"},"locale":"en-us","collapsed":true,"filter":{"explicit":true,"multiSelection":true,"members":["Enrolled","Pending","Terminated"],"filter":{"turnedOff":true,"exclude":{"members":["Terminated"]}}}},"instanceid":"3D068-Show more


{
    "headers": [
        "Agent Assisted Enrollments"
    ],
    "metadata": [
        {
            "jaql": {
                "context": {
                    "[48C99-5C0]": {
                        "agg": "count",
                        "datatype": "numeric",
                        "column": "id",
                        "merged": true,
                        "dim": "[enrollment.id]",
                        "title": "# of unique id",
                        "table": "enrollment"
                    }
                },
                "formula": "([48C99-5C0])",
                "type": "measure",
                "title": "Agent Assisted Enrollments",
                "columnTitle": "([# of unique id])"
            },
            "instanceid": "C795D-A70B-86",
            "format": {
                "color": {
                    "color": "#03738C",
                    "colorIndex": 0,
                    "type": "color"
                },
                "mask": {
                    "decimals": "auto",
                    "separated": true,
                    "isdefault": true,
                    "type": "number",
                    "abbreviateAll": false,
                    "abbreviations": {
                        "b": true,
                        "t": true,
                        "k": false,
                        "m": true
                    }
                }
            },
            "source": "value"
        }
    ],
    "datasource": {
        "revisionId": "TBD",
        "fullname": "LocalHost/MAIN"
    },
    "processingInfo": {
        "cacheType": "none",
        "cacheTime": "2026-11-08T21:32:38.615Z"
    },
    "translationInfo": {
        "translationServiceProvider": "NewTranslationService",
        "isTranslationFallback": false,
        "isQueryFallback": false,
        "isAeMode": false,
        "translationStrategy": "NEW_THEN_OLD",
        "translationDuration": 0.229,
        "sqlFromCache": false
    },
    "values": [
        {
            "data": 38255,
            "text": "38255"
        }
    ]
}

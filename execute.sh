#!/bin/bash

#********************************************************************************
# Copyright 2014 IBM
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#********************************************************************************

set +e
set +x 

cat "$TMPDIR/ibm.devops.services.pipeline.dra_devops_gate.json"
touch "$TMPDIR/ibm.devops.services.pipeline.dra_devops_gate.json"
echo '{"pipeline_ui": [
            {
              "url": "https://dra.ng.bluemix.net/report/af15c1eecc608de2dda7b22b60a48a5c",
              "job_execution_id": '\"$TASK_ID\"',
              "default_tab": true
            }
        ],
        "report_urls": [
            {
                "report_url": "https://dra.ng.bluemix.net/report/af15c1eecc608de2dda7b22b60a48a5c",
                "job_id": '\"$IDS_JOB_ID\"'
            }
        ]
    }' > "$TMPDIR/ibm.devops.services.pipeline.dra_devops_gate.json"
cat "$TMPDIR/ibm.devops.services.pipeline.dra_devops_gate.json"
$PIPELINE_SCRIPTS_DIR/ids-set-extension-data.sh

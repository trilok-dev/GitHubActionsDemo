#!/bin/bash

pushd $scripts_dir/JQTool
echo "Current Dir : "$PWD

if [[ -f ${jq_tool} ]]; then

    echo "****************Maths Details*****************"
    cat jq_data.json | ${jq_tool} ".quiz.maths"

    echo "****************Maths q1 options Details*****************"
    cat jq_data.json | ${jq_tool} ".quiz.maths.q1.options"

else
    echo "JQ_Tool not present..."
fi

popd
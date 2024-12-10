import json

# Read JSON file
with open('/home/shengyao/ToolBench/data_example/instruction/G3_query.json', 'r', encoding='utf-8') as json_file:
    data = json.load(json_file)

# retrieve requests
requests = data

with open('requests.txt', 'w', encoding='utf-8') as txt_file:
    for request in requests:
        txt_file.write(json.dumps(request) + '\n')

print("Successfully converted!")
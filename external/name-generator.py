import json
import time

fixed_name = "web"
result = {
    "name": f"{fixed_name}-{int(time.time())}",
}

# Send name to std.out
# Called in TF by data.external.droplet_name.result.name
print(json.dumps(result))

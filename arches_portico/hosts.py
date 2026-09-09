import re
from django_hosts import patterns, host

host_patterns = patterns(
    "",
    host(re.sub(r"_", r"-", r"arches_portico"), "arches_portico.urls", name="arches_portico"),
)

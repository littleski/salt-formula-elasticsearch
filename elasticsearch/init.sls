
{%- if pillar.elasticsearch is defined %}
{%- if pillar.elasticsearch.repo is defined %}
elk_repo:
  pkgrepo.managed:
    - humanname: ELK repository for 7.x packages
    - baseurl: https://artifacts.elastic.co/packages/7.x/yum
    - gpgcheck: 1
    - gpgkey: https://artifacts.elastic.co/GPG-KEY-elasticsearch
    - require_in:
        - pkg: elasticsearch_packages
{%- endif %}
include:
{%- if pillar.elasticsearch.server is defined %}
- elasticsearch.server
{%- endif %}
{%- if pillar.elasticsearch.client is defined %}
- elasticsearch.client
{%- endif %}
{%- endif %}

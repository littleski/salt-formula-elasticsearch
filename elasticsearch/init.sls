
{%- if pillar.elasticsearch is defined %}
include:
{%- if pillar.repo is defined %}
elk_repo:
  pkgrepo.managed:
    - humanname: ELK repository for 7.x packages
    - baseurl: https://artifacts.elastic.co/packages/7.x/yum
    - gpgcheck: 1
    - gpgkey: https://artifacts.elastic.co/GPG-KEY-elasticsearch

{%- if pillar.elasticsearch.server is defined %}
- elasticsearch.server
{%- endif %}
{%- if pillar.elasticsearch.client is defined %}
- elasticsearch.client
{%- endif %}
{%- endif %}

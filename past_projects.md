---
layout: page
title: Past Projects
permalink: /past_projects/
---


{%- for project in site.past_projects reversed -%}
{%- if project.published -%}
  <section class="project">
    <h2>{{ project.title }}</h2>
      <!--<p><i>with {{ project.collaborators }}.</i></p>-->
      <p>{{ project.content }}</p>
  </section>

{%- unless forloop.last -%}
  <hr>
{%- endunless -%}

{%- endif  -%}
{%- endfor -%}


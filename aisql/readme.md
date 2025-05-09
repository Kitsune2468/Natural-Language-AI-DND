**config.json** should not be shared or committed. :) (Fixed lol)

**setup.sql** setups the database. (Changed to my example along with setupData.sql)

**db_bot.py** initializes the database, connects to openai, provides prompts and questions.

TODO:
**strategies** attempting to try out the three strategies “zero-shot, single-domain, and cross-domain” as outlined in this paper: https://arxiv.org/abs/2305.11853 <- read it 😊

TODO:
**responses_\<strategy>_\<time>.json** records the provided prompts and questions, as well as the generated SQL queries and responses.

**description** This database represents the mock data for a D&D scheduler.

TODO:
<a href="sample_post.md">**sample_post.md**</a> is a sample report of the data in this effort.

TODO:
<a href="schema.png">schema.png</a> is a sample schema. Can you identify where foreign keys should exist but are not explicitly defined 😊? This was created from the sqlite database via <a href="https://www.google.com/search?q=install+schemacrawler">schemacrawler</a>:
```
schemacrawler --server sqlite --database .\aidb.sqlite --command=schema --output-file=./schema.png --info-level=standard
```



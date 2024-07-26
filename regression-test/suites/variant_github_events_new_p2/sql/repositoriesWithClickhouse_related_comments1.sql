SELECT /*+SET_VAR(enable_fallback_to_original_planner=false) */ cast(v["repo"]["name"] as string) as repo_name, count() FROM github_events WHERE lower(cast(v["payload"]["comment"]["body"] as string)) LIKE '%apache%' GROUP BY repo_name ORDER BY count() DESC, repo_name ASC LIMIT 50
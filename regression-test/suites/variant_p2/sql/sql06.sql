SELECT count(cast(payload["issue"] as string)) FROM github_events where cast(payload["issue"]["state"] as string) = "closed";
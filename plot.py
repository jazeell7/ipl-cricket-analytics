import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("reports/plot.csv")

teams = df["team"]
matches = df["matches"]

plt.figure(figsize=(12, 6))
plt.bar(teams, matches)

plt.xticks(rotation=45, ha='right')
plt.yticks(range(0, max(matches) + 5, 5))

plt.xlabel("Teams")
plt.ylabel("Matches Played")
plt.title("Matches Played by Teams")

plt.tight_layout()
plt.savefig("reports/teams_matches.png")
plt.show()
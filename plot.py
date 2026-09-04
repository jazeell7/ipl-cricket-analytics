import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("reports/plot.csv")

teams = df["team"]
matches = df["matches"]

plt.bar(teams, matches)
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()

plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig("reports/teams_matches.png")
plt.show()

import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("reports/analysis.csv")

wins_df = df[df.columns[:2]].dropna()
wins_df.columns = ["team", "value"]

plt.figure()
plt.bar(wins_df["team"], wins_df["value"])
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig("reports/team_wins.png")
plt.show()
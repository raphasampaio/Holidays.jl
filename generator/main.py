import sys
from datetime import date

import holidays

country = sys.argv[1]
start_year = int(sys.argv[2])
end_year = int(sys.argv[3])

print("    holidays = [")
for date, name in sorted(holidays.country_holidays(country, years=range(start_year, end_year + 1)).items()):
    print(f"        Date({date.year}, {date.month}, {date.day}), # {name}")
print("    ]")

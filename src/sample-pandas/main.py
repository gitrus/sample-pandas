import time
from typing import List

import pandas as pd


def to_record_list(df: pd.DataFrame) -> None:
    columns: List[str] = ['date_c', 'com_id_c', 'timeslot_c', 'weekday_c', 'metric_c']
    [str(record) for record in df[columns].to_records(index=False)]


if __name__ == '__main__':
    start_t = time.time()
    to_record_list(pd.read_csv('/app/sample_df.csv'))
    print(time.time() - start_t)

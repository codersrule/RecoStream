## MovieLens 100K Dataset

This directory contains the MovieLens 100K dataset used for training the recommendation model.

### Download

```bash
bash download_data.sh
```

### Dataset Description

- **ratings.csv**: User-item interactions
    - user_id: User identifier
    - item_id: Movie/item identifier
    - rating: Rating (1-5)
    - timestamp: Unix timestamp

### Statistics

- 100,000 ratings
- 943 users
- 1,682 items
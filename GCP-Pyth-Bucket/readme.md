# Creating a GCP simple GCP bucket

## Written in Python
The code is written in Python and can be used as a re-usable funct. With argument "bucket-name"
## Unitest
```py
class TestBucket(unittest.TestCase):
    def test_bucket_name_value(self):
        bucket = 'cloud-skills-bucket'
        self.assertEqual(bucket, 'cloud-skills-bucket')
    def test_bucket_name_value_is_string(self):
        bucket = 'cloud-skills-bucket'
        self.assertEqual(type(bucket), str)

if __name__ == "__main__":
    unittest.main()
```

#### If somethings is wrong you can contact me directly. Thanks
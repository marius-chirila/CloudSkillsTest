import unittest

class TestBucket(unittest.TestCase):
    def test_bucket_name_value(self):
        bucket = 'cloud-skills-bucket'
        self.assertEqual(bucket, 'cloud-skills-bucket')
    def test_bucket_name_value_is_string(self):
        bucket = 'cloud-skills-bucket'
        self.assertEqual(type(bucket), str)

if __name__ == "__main__":
    unittest.main()

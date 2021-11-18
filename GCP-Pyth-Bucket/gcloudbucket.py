#Default class storage
import sys
from google.cloud import storage

try: 
    def main():
        create_bucket(bucket_name)

except Exception as e:
    print(e)

def create_bucket(bucket_name):
    bucket_client = storage.Client()
    bucket = bucket_client.bucket(bucket_name)
    new_bucket = bucket_client.create_bucket(bucket)
    print(new_bucket)

# Bucket name comes as an argument
bucket_name = sys.argv[1]

if __name__ == '__main__':
    main()
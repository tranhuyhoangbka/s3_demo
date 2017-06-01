class AWS::S3::Bucket
  def test
    AMAZON_BUCKET.create
    object = AMAZON_BUCKET.object('ruby_sample_key.txt')
    object.put(body: "Hello World!")
    puts "Created an object in S3 at:"
    puts object.public_url
    puts "\nUse this URL to download the file:"
    puts object.presigned_url(:get)
    puts object.etag
    puts "(press any key to delete both the bucket and the object)"
    $stdin.getc
    puts "Deleting bucket"
    AMAZON_BUCKET.delete!
  end
end
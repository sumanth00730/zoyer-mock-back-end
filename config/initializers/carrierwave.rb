CarrierWave.configure do |config|
    config.storage    = :aws
    config.aws_bucket = 'zagglepurchaseorders'
    config.aws_acl    = 'public-read'
    config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7
    config.aws_credentials = {
      access_key_id:     'AKIA25Z5TO4TNTZAZLLM',
      secret_access_key: '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',
      region:            'us-east-1' # Required
    }
end
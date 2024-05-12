secret = 'b6ff5a9c3c97bf89afe9a72e6667bafe855390e8570d46e16e9760f6394' +
  '4ab05577b211ec2f43f6c970441518f0241775499bde055078f754c33b62f68ba27ca'

cookie = "_test_session=BAh7CCIYdXNlcl9jcmVkZW50aWFsc19pZGkGIhV1c2VyX2NyZW" +
  "RlbnRpYWxzIgGAMzBlODkxZDQ2MWZhNjFkMDFmNzczMmJjNDdjMjIwZGFjMTY2NWEwNDMwZ" +
  "DVjMmUxOWY5MDFjMjQ5NWQ4OTM1OGZlMzE3NzRiZTFiZjM1ZTVlZDY2ZGUzYTkwOWZjZTgw" +
  "NTFlNGUxZWI0MTUzYTRjODZiMGZmMzM3NzliM2U3YzI6D3Nlc3Npb25faWQiJTgxNzk0Yjd" +
  "kN2IxYzRjMDE0M2QwOTk5NTVjZjUwZTVm--25c8f3222ab1be9f2394e2795a9f2557b06d0a92"

session = cookie.split('=').last
verifier = ActiveSupport::MessageVerifier.new(secret, 'SHA1')
verifier.verify(session)

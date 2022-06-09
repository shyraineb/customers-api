%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "id": 4,
  "firstName": "Four",
  "lastName": "Four",
  "age": 23,
  "address": {
    "streetAddress": "Second street",
    "city": "New York",
    "state": "NY",
    "postalCode": 1001
  }
})
%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "id": 1,
  "firstName": "One",
  "lastName": "Updated",
  "age": 23,
  "address": {
    "streetAddress": "Second street",
    "city": "New York",
    "state": "NY",
    "postalCode": 1001
  }
})
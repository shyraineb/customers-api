%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "Customers": [
    {
      "id": "1",
      "firstName": "Zach",
      "lastName": "One",
      "Age": "22",
      "Address": {
        "Street": "Third street",
        "City": "New York",
        "State": "NY",
        "postalCode": "1001"
      }
    },
    {
      "id": "2",
      "firstName": "Zayn",
      "lastName": "Two",
      "Age": "22",
      "Address": {
        "Street": "Third street",
        "City": "New York",
        "State": "NY",
        "postalCode": "1001"
      }
    }
  ]
})
# Cooper Union SQLite Client
*Note:* This readme pulled from the root of the project, hosted on at [glitch](https://glitch.com/~cooper-union-sqlite-json-storage). This package is published from the project's `/client` folder.

# Readme 


The api client library is contained in the `/client` folder of this project. For easy installation and use in other projects, it is packaged on [npm](https://www.npmjs.com/package/cooper-union-sqlite-client).

## Installation
`npm install --save cooper-union-sqlite-client`
`const client = require('cooper-union-sqlite-client')({apiKey:apiKey})`

## Configuration
Both configuration options can be set when instantiating the client (as `apiKey` is in the above usage example). As of 0.1.6, api keys are not required, and are just included to help set up future development.

```
client.apiKey = <provided api key>
client.endpoint = <url to a remixed or self-hosted version of this project>
```

## Functions
* client.get(key)
* client.post(key, payload)
* client.update(key, payload)
* client.delete(key)

In the case of all functions, the `key` is a string that should uniquely identify the object, and the payload is a JSON object. All operations return promises, and are designed to be used in an async/await context.

## Examples
The following example creates a stored JSON object called *test*, retrieves it, updates it, and then deletes it.

```
await client.post('test', {
  "fancy":true
})

const testData = await client.get('test')

await client.update('test', {
  "fancy":false,
  "another": true
})

await client.delete('test')

```


## Current Test Coverage
```
✓ api key should be set correctly (6ms)
✓ setting a new endpoint should work
✓ client.get() without a key should fail (1ms)
✓ client.get(testDataKey) should fail when the key does not exist (1188ms)
✓ client.post() without data should fail
✓ client.post() with new data should succeed (54ms)
✓ client.get(testDataKey) should return correctly after it exists (28ms)
✓ client.update should fail with an invalid key (37ms)
✓ client.update should succeed with new data (122ms)
✓ client.delete should succeed with a valid key (129ms)
```

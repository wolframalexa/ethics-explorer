/* global expect, describe, jest */
let apiKey = "test-api-key"
let endpoint = "https://ethics-explorer.glitch.me"

let testDataKey = `automatically-generated-test-data-${Math.ceil(Math.random()*1000)}`


const client = require("./")({apiKey:apiKey})

describe('client integration tests', ()=>{
  
  afterEach(()=>{
    client.apiKey = apiKey
    client.endpoint = endpoint
  })
  
  afterAll(async ()=>{
    await client.delete(testDataKey)
  })
  
  test('api key should be set correctly', ()=>{
    
    const debug = client.debug()
    expect(debug.apiKey).toEqual(apiKey)
    
  })
  
  test('setting a new endpoint should work', ()=>{
    
    const randomEndpoint = `https://${Math.ceil(Math.random()*1000)}`
    
    client.endpoint = randomEndpoint
    const debug = client.debug()
    expect(debug.endpoint).toEqual(randomEndpoint)
    
  })
    
  test('client.get() without a key should fail', async ()=>{
    try {
      await client.get()
    } catch(e) {
      expect(e).toBeDefined()
    }
  })
  
  test('client.get(testDataKey) should fail when the key does not exist', async ()=>{
    
    try {
       const result = await client.get(testDataKey)
    } catch(e) {
      expect(e).toBeDefined()  
    }
  })
  
  test('client.post() without data should fail', async ()=>{
    
    try {
      const result = await client.post()
    } catch(e) {
      expect(e).toBeDefined()
    }
    
  })
  
  test('client.post() with new data should succeed', async ()=>{
    
    const key = testDataKey
    const payload = {"fancy":true}
    
    const result = await client.post(key, payload)
    expect(result.status).toEqual(200)
    
  })  
  
  test('client.get(testDataKey) should return correctly after it exists', async ()=>{
    
    const result = await client.get(testDataKey)
    expect(result.author).toEqual(apiKey)
    
  }) 
  
  test('client.update should fail with an invalid key', async()=>{
    
    try {
      const update = await client.update("this key cannot exist", {
        fancy: false
      })
    } catch (e) {
      expect(e).toBeDefined()
    }
    
  })
  
  test('client.update should succeed with new data', async()=>{
    
    const update = await client.update(testDataKey, {
      fancy: false
    })

    const response = await client.get(testDataKey);
    expect(response.data.fancy).toEqual(false)
    
  })
  
  test('client.delete should succeed with a valid key', async()=>{
    
    const response = await client.delete(testDataKey);
    expect(response).toBeTruthy()
    
  })
    
})
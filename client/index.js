tconst fetch = require('node-fetch')

class Data {
  
  constructor(config) { 
    this.endpoint = config.endpoint || 'https://ethics-explorer.glitch.me'
    this.apiKey = config.apiKey
  }

  async post(key, payload) {
    if(!key || !payload) throw new Error("A named key and json payload are required to post data.");
    
    const formattedPayload = {
      name: key,
      data: JSON.stringify(payload),
      author: this.apiKey //maybe do a lookup later
    }
    
    return await fetch(`${this.endpoint}/data`, {
      method:'post',
      headers: {
        'Content-Type': 'application/json',
        'x-sender': 'npm-client'
      },
      body: JSON.stringify(formattedPayload)
    }).then(res=>res.json())
  }
  
  async get(key) {
    
    if(!key) throw new Error("A key is required to fetch data.");
    
    const response = await fetch(`${this.endpoint}/data/name/${key}`).then((res)=>{
      if(res.status != 200) throw new Error({
        status: res.status,
        response: res.json()
      })
      return res.json()
    })
    
    // if(response.headers.status != 200) throw new Error(response)
    return response
  }

  async update(key, payload) {
    if(!key || !payload) throw new Error("A named key and json payload are required to post data.");
    
    const formattedPayload = {
      name: key,
      data: JSON.stringify(payload),
      author: this.apiKey //maybe do a lookup later
    }
    
    return await fetch(`${this.endpoint}/data/name/update`, {
      method:'post',
      headers: {
        'Content-Type': 'application/json',
        'x-sender': 'npm-client'
      },
      body: JSON.stringify(formattedPayload)
    }).then(async (res)=>{
            
      if(res.status != 200) throw new Error({
        status: res.status,
        response: res.json()
      })
      return await res.json()
    })
   
  }
  
  async delete(key) {
    if(!key) throw new Error("A named key and json payload are required to post data.");
    
    return await fetch(`${this.endpoint}/erase/name/${key}`, {
      method:'post',
      headers: {
        'Content-Type': 'application/json',
        'x-sender': 'npm-client'
      }
    }).then(async (res)=>{
            
      if(res.status != 200) throw new Error({
        status: res.status,
        response: res.json()
      })
      return await res.json()
    })
   
  }
  
  debug() {
    return {
      endpoint: this.endpoint, 
      apiKey: this.apiKey
    }
  }
}

module.exports = (config) => { return new Data(config)}
Rails.application.config.session_store :redis_store, {
    servers: [
     {
       host: ENV.fetch("REDIS_HOST") ,
       port: ENV.fetch("REDIS_PORT") ,
       db: 0,
       namespace: 'session'
     }
    ],
    expire_after: 10.minutes
  }
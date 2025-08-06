PdfjsViewer::Engine.routes.draw do
  get '/', to: 'viewer#show'
    get '/viewer', to: 'viewer#show'

  get '/build/*path', to: 'assets#show'
  get '/web/*path', to: 'assets#show'
end
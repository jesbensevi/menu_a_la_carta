client = Mongo::Client.new(ENV["MONGO_URL"])

Handler = Proc.new do |req, res|
  document = { name: "Harriet", age: 36 }
  result = client[:artists].insert_one( document )
  res.status = 200
  res['Content-Type'] = 'text/text; charset=utf-8'
  res.body = "Pude insertar #{ result.n } documentos"
end
Handler = Proc.new do |req, res|
  res.status = 200
  res['Content-Type'] = 'text/text; charset=utf-8'
  res.body = "Hoy es: #{Time.new}"
end
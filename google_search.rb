require 'launchy'

if ARGV.empty?
  puts "faut mettre un argument"
  return
end
search=  ARGV
i =0
google_url =""
while i < search.length
  if i ==0 
     google_url+= search[i].to_s
  end
  i+=1
  google_url+= '+' + search[i].to_s
end
count=google_url.length-1
google_url[count]= ""
url = "https://www.google.com/search?q=" + google_url
Launchy.open(url)
 # ligne très importante qui appelle la gem.
require 'twitter'


# n'oublie pas les lignes pour Dotenv ici…
require 'dotenv'# Appelle la gem Dotenv
# quelques lignes qui appellent les clés d'API de ton fichier .env
Dotenv.load # Ceci appelle le fichier .env grâce à la gem Dotenv, et importe toutes les données enregistrées dans un hash ENV

# Il est ensuite très facile d'appeler les données du fichier .env, par exemple là je vais afficher le contenu de la clé TWITTER_API_SECRET
puts ENV['TWITTER_API_SECRET']

# tout est stocké dans un hash qui s'appelle ENV. Tu peux le regarder en faisant :
puts ENV
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end
#test de connexion

def login_twitter
  client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
 end
end

# ligne qui permet de tweeter sur ton compte
client.update('Mon premier tweet en Ruby !!!!')
client.follow('HeryMirindra')
client.followers("HeryMirindra")
client.friends("gem")
#HeryMirindra.location
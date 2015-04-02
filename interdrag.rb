#encoding: UTF-8
class Dragon
def initialize nome
@addormentato=false # non dorme
@robainpancia=5 # non deve magna
@robaintestino=0 # non deve fare caccapupu
puts '* Ciao! Benvenuto a Dragonlandia! Se vuoi iniziare e sapere come si chiama il tuo draghetto, digita \'Begin\':'
puts '* Hi! Welcome to Dragonland! If you want to begin and want to know what is your dragon\'s name, type \'Begin\':'
inizio=gets.chomp
if inizio.downcase=='begin'
puts '* Scrivi il nome del tuo draghetto:'
puts '* Write here your dragon\'s name:'
else
puts '* Arrivederci!'
puts '* Goodbye!'
exit
end
@nome=gets.chomp.capitalize
while @robainpancia>=0
puts '* Cosa vuoi che faccia '+@nome+'? Leggi il file commands.txt per maggiori informazioni sui comandi'
puts '* What do you want '+@nome+' to do? Read the file commands.txt for information about.. Commands, of course'
azione=gets.chomp
if azione.downcase=='go to sleep'
mettidormire
elsif azione.downcase=='eat'
daidamangiare
elsif azione.downcase=='go for a walk'
portapasseggio
elsif azione.downcase=='play with me'
lanciainaria
elsif azione.downcase=='lull'
dondola
elsif azione.downcase=='exit'
puts '* '+@nome+' ti saluta, a presto!'
puts '* '+@nome+' say goodbye, see you soon!'
exit
else
puts '* Scusami, non ho riconosciuto il comando!'
puts '* Sorry, I didn\'t understand the command!'
end
end
end
def daidamangiare
puts '~ Hai dato da mangiare a '+@nome+'!'
puts '~ You fed '+@nome+'!'
@robainpancia=5
tempopassa
end
def portapasseggio
puts '~ Hai portato a passeggio '+@nome+'! Ha pure fatto i suoi bisognini... Guardati le scarpe e ne avrai conferma...'
puts '~ You go out with '+@nome+' for a walk! He also did what he needed to do... watch your new shoes...'
@robaintestino=0
tempopassa
end
def mettidormire
puts '~ Hai messo '+@nome+' a dormire...'
puts '~ '+@nome+' finally went to sleep... Thanks God'
@addormentato=true 
3.times do
if @addormentato
tempopassa
end
if @addormentato
puts '~ '+@nome+' sta russando, riempiendo la stanza di fumo...'
puts '~ '+@nome+' is sleeping, making the bedroom full of smoke...'
end
end
if @addormentato
@addormentato=false
puts '~ '+@nome+' si sveglia lentamente.'
puts '~ '+@nome+' is waking up slooooowly...'
end
end              
def lanciainaria
puts '~ Fai volare '+@nome+' in aria, e fa una risatina.. Che ti ha appena provocato una ustione di terzo grado alle sopracciglia...'
puts '~ You launch '+@nome+' in the air, then you take him... He is laughing... He is throwing flames out of his mouth... Maybe this isn\'t the right game...'
tempopassa
end
def dondola
puts '~ Fai dondolare '+@nome+' dolcemente...'
puts '~ You lull '+@nome+' lovely...'
@addormentato=true
puts '~ Si è appisolato con le tue coccole.. Che carino!'
puts '~ He is sleeping thanks to your snuggles... Very nice!'
tempopassa
if @addormentato
@addormentato=false
puts '~ Ma appena smetti si risveglia, mannaggia al ca..'
puts '~ But as soon as you stop lulling him, he wakes up, damn..'
end
end
# i metodi interni, non visibili, che non devono interessarvi
def affamato?
@robainpancia<=2
end
def caccapupu?
@robaintestino>=4
end
def tempopassa
if @robainpancia>0
@robainpancia=@robainpancia-1   # sposta la 'roba' dalla pancia
@robaintestino=@robaintestino+1 # all'intestino
else
if @addormentato
@addormentato=false
end
puts '> '+@nome+' sta morendo di fame, povero cucciolo! Oh miseria, è così disperato che mangia TE! AIUTO!'
puts '> '+@nome+' is starving, he needs to eat something, or someone! Man, he is going to eat YOU! HELP!'
puts '* Addio, riposa in pace.'
puts '* Goodbye, rest in peace.'
exit       # termina il programma
end
if @robaintestino>=5
@robaintestino=0
puts '> Porca miseria gli è proprio scappata la caccapupu.. Esattamente sul divano...'
puts '> Damn he needed to go to the bathroom.. But now he doesn\'t need anymore.. Just look at the sofa...'
end
if affamato?
if @addormentato
@addormentato=false
puts '> '+@nome+' si sveglia di colpo!'
puts '> '+@nome+' suddenly wakes up!'
end
puts '> Lo stomaco di '+@nome+' brontola... Meglio dargli da mangiare!'
puts '> '+@nome+' is hungry... Better give him something to eat...'
end
if caccapupu?
if @addormentato
@addormentato=false
puts '> '+@nome+' si sveglia di colpo!'
puts '> '+@nome+' suddenly wakes up!'
end
puts '> '+@nome+' fa la danza del vasino... Caccapupu in arrivo...'
puts '> '+@nome+' need to go to the bathroom... Very soon...'
end
end
end
pet = Dragon.new @nome

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

bgimages=new Array()
bgimages[0]="test.jpg"
bgimages[1]="img2.jpg"
bgimages[2]="img3.jpg"

//preload images
pathToImg=new Array()
for (i=0;i<bgimages.length;i++){
pathToImg[i]=new Image()
pathToImg[i].src=bgimages[i]
}

inc=-1

function bgSlide(){
if (inc<bgimages.length-1)
inc++
else
inc=0
document.body.background=pathToImg[inc].src
}

if (document.all||document.getElementById)
window.onload=new Function('setInterval("bgSlide()",3000)')

// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

bgimages=new Array()
bgimages[0]="test.jpg"
bgimages[1]="img2.jpg"
bgimages[2]="img3.jpg"

//preload images

pathToImg = new Array()
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

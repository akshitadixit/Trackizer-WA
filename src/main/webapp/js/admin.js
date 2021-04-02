// This is VERY much a work in progress. Hope to complete work by mid September, but depends on spare time

$('#menu-toggle,#menu-overlay').click(function(){
    $('body').toggleClass('open-menu');
  });
  
 $('#main-nav li a').click(function(){
    $('#main-nav li').removeClass('active');
    $(this).parent().addClass('active')
  });
  
  $('#tabs li').click(function(){
    var clickTarget = $(this).attr('data-target');
    $('.tab-target').removeClass('targeted');
    $('#'+clickTarget).addClass("targeted");
    $('#tabs li').removeClass('active');
    $(this).addClass('active')
  });
 
  
  $('#admin-search input').on('focus',function(){
    $('#header_logo').addClass('hidden');
  });
  $('#admin-search input').on('blur',function(){
    $('#header_logo').removeClass('hidden');
  });

// Create a "close" button and append it to each list item
var myNodelist = document.getElementsByTagName("LI");
var i;
for (i = 0; i < myNodelist.length; i++) {
  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  myNodelist[i].appendChild(span);
}

// Click on a close button to hide the current list item
var close = document.getElementsByClassName("close");
var i;
for (i = 0; i < close.length; i++) {
  close[i].onclick = function() {
    var div = this.parentElement;
    div.style.display = "none";
  }
}

// Add a "checked" symbol when clicking on a list item
var list = document.querySelector('ul');
list.addEventListener('click', function(ev) {
  if (ev.target.tagName === 'LI') {
    ev.target.classList.toggle('checked');
  }
}, false);

// Create a new list item when clicking on the "Add" button
function newElement() {
  var li = document.createElement("li");
  var inputValue = document.getElementById("myInput").value;
  var t = document.createTextNode(inputValue);
  li.appendChild(t);
  if (inputValue === '') {
    alert("You must write something!");
  } else {
    document.getElementById("myUL").appendChild(li);
  }
  document.getElementById("myInput").value = "";

  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  li.appendChild(span);

  for (i = 0; i < close.length; i++) {
    close[i].onclick = function() {
      var div = this.parentElement;
      div.style.display = "none";
    }
  }
}
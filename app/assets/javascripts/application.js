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
//= require jquery.minicolors
//= require jquery.turbolinks
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .


var ready;

ready = function() {

  console.log('ready');
    $('input[type=text].spectrum').minicolors({
    	theme: 'bootstrap',
    	inline: true,
    	defaultValue: '#fff',
        show: function() {
            $('body.color-adjust').css('background-color', value);
        },
    	change: function(value, opacity) {
	        console.log(value + ' - ' + opacity);
	        $('body.color-adjust').css('background-color', value);
	    }
    });

    // clipboard copy script adapted from Wes Bos' csscursor.info
    var colours = document.querySelectorAll('.colour-section .copy-colour');

    function copyColour(e) {

        console.log(e);

        e.preventDefault();

        var t = e.target;

        var c = t.dataset.colour;

        var clipboard = (c ? document.querySelector('[name="clipboard"]') : null);
        clipboard.value = c;

        console.log( clipboard.value );

        if (clipboard && clipboard.select) {

            clipboard.select();
            console.log(clipboard);

        try {
            // copy text
            document.execCommand('copy');
            clipboard.blur();

            console.log(clipboard.value);

            // copied animation
            // t.classList.add('copied');
            // setTimeout(function() { t.classList.remove('copied'); }, 1500);

            t.innerHTML = 'copied';
            setTimeout(function() { t.innerHTML = c; }, 1500);
        }
            catch (err) {
                alert('please press Ctrl/Cmd+C to copy');
                console.log(err);
            }
        }

        // var clipboardInput = document.querySelector('[name="clipboard"]');
        // clipboardInput.value = this.dataset.colour;
        // clipboardInput.select();

        // document.execCommand('copy');
        
    }

    Array.from(colours).forEach(colour => colour.addEventListener( 'click', copyColour, true ));




};

$(document).ready(ready);
$(document).on('page:load', ready);

;
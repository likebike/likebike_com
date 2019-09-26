// You can put Javascript that should run on every page here.

"use strict";

// Protect IE:
if(typeof console === 'undefined')
    var console = {log:function(){}, error:alert};

jQuery(function() {
    jQuery('html').removeClass('no-js');
});

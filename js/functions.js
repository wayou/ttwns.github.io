var menuBtn = document.getElementById('menu-btn');

function toggleVisibility(id) {
    var e = document.getElementById(id);
    if (e.classList) {
        e.classList.toggle('opaque');
    } else {
        var classes = e.className.split(' ');
        var existingIndex = -1;
        for (var i = classes.length; i--;) {
            if (classes[i] === 'opaque')
            existingIndex = i;
        }

        if (existingIndex >= 0)
            classes.splice(existingIndex, 1);
        else
            classes.push('opaque');

        e.className = classes.join(' ');
    }
}

function toggleDisplay(hideThisEl, displayThisEl) {
    var hideThisEl = document.getElementById(hideThisEl) || null;
        displayThisEl = document.getElementById(displayThisEl) || null;

    if (hideThisEl) {
        hideThisEl.style.display = hideThisEl.style.display == '' ? 'none' : '';
    }
    if (displayThisEl) {
        displayThisEl.style.display = displayThisEl.style.display == 'none' ? '' : 'none';
    }
}


if (menuBtn.addEventListener) {
    menuBtn.addEventListener('click', function(){
        toggleVisibility('main-nav');
    }, false);
} else {
    menuBtn.attachEvent('onclick', function(){
        toggleVisibility('main-nav');
    });
}
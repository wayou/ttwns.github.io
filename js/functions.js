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

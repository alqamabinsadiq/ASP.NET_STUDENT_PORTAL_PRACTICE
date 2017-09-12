
function ShowResult(url) {
    window.parent.$find('res').set_contentUrl(url);
    window.parent.$find('rwm').GetActiveWindow().Minimize()
}

function SetPosition(sender, args) {
    if (args.get_commandName() == 'Minimize') {
        sender.SetModal(false);
        sender.MoveTo(document.body.clientWidth - 210, 50);
    }
    else if (args.get_commandName() == 'Restore') {
        sender.SetModal(true);
        sender.MoveTo((document.body.clientWidth - sender.GetWidth()) * 0.5, (document.body.clientHeight - sender.GetHeight()) * 0.5);
    }
}

function CloseAllRadWindows() {
    var rWindows = window.parent.$find('rwm').GetWindows();
    for (var i = 0; i < rWindows.length; i++) {
        rWindows[i].Close();
    }
}

function mngRequestStarted(ajaxManager, eventArgs) {
    if (eventArgs.get_eventTarget().indexOf("btnExport") >= 0) {
        eventArgs.EnableAjax = false;
    }
    else {
        document.body.setAttribute('background-color', 'black');
    }
}

function ExpandSlider(slider) {
    var sliderZone = $find('rsZone');
    sliderZone.ExpandPane(slider);
}

function RequestStart(sender, eventArgs) {
    document.body.className = 'setOpacity';
}

function ResponseEnd(sender, eventArgs) {
    document.body.className = 'removeOpacity';
    return false;
}

resourceName = null;
deathScreenOpen = false;
clickTimer = 5;
window.addEventListener('message', function(event) {
    ed = event.data;
	if (ed.action === "DSMenu") {
		if (ed.open === true) {
			resourceName = ed.resourceName;
			deathScreenOpen = true;
            document.getElementById("wrapper").style.display = "block";
            document.getElementById("subDeathText").innerHTML="You are incapacitated. Please wait for doctors, everything will be fine.";
            startTimer(ed.time);
		} else {
            console.log("Death screen closed");
			deathScreenOpen = false;
            document.getElementById("wrapper").style.display = "none";
            document.getElementById("subDeathText").innerHTML="You are incapacitated. Please wait for doctors, everything will be fine.";
            clearInterval(timerInt);
		}
	} else if (ed.action === "hold") {
        document.getElementById("subDeathText").innerHTML="Hold <span style='color: #E0606E;'>E</span> <span id='holdText' style='color: #E0606E;'>(5)</span> to respawn or wait for the <span style='color: #E0606E;'>EMS</span>";
    } else if (ed.action === "updateHold") {
        document.getElementById("holdText").innerHTML=`(${ed.time})`;
    }
})

function startTimer(duration) {
    var timer = duration, minutes, seconds;
    timerInt = setInterval(function() {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);
        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;
        document.getElementById("timerMinuteF").innerHTML=minutes.toString()[0];
        document.getElementById("timerMinuteS").innerHTML=minutes.toString()[1];
        document.getElementById("timerSecondF").innerHTML=seconds.toString()[0];
        document.getElementById("timerSecondS").innerHTML=seconds.toString()[1];
        if (--timer < 0) {
            clearInterval(timerInt);
            document.getElementById("subDeathText").innerHTML="Hold <span style='color: #E0606E;'>E</span> <span id='holdText' style='color: #E0606E;'>(5)</span> to respawn or wait for the <span style='color: #E0606E;'>EMS</span>";
        }
    }, 1000);
}

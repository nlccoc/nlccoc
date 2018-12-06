$(document).ready(function() {
  const $buttons = $(".demo__social-btn");
  const $toggle = $(".demo__open-btn");
  var delay = 150;
  var timeouts = [];
  var steps = [];
  var open = false;
  
  var curStep = 0;

  for (var i = 0; i <= 3; i++) {
    steps[i] = "demo__step-" + i;
  }

  function setStep(index) {
    $buttons.slice(0, steps.length - index).removeClass(steps.join(" ")).addClass(steps[index]);
  }

  function clearTimeouts() {
    timeouts.forEach(function(to) {
      clearTimeout(to);
    });
  }

  function animate() {
    if (curStep >= 4) {
      curStep = 0;
      return;
    }

    open = true;
    setStep(curStep);
    timeouts[curStep] = setTimeout(animate, delay);
    curStep++;
  }

  $toggle.on("click", function() {
    if (!open) animate();
    else {
      clearTimeouts();
      $buttons.removeClass(steps.join(" "));
      open = false;
      curStep = 0;
    }
  });
});
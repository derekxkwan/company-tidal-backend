;(require 'cl-lib)
 (require 'company)

(defvar tidal-lang-completions
  '(
    "_every" "_every'" "_fast" "_run" "_scan" "_slow" "append" "cat" "compress" "compressTo" "cosine" "density" "densityGap" "envEq" "envEqR" "envL" "envLR" "every" "every'" "fast" "fastAppend" "fastCat" "fastcat" "fastFromList" "fastGap" "fastRepeatCycles" "fastSqueeze" "foldEvery" "fromList" "fromMaybes" "isaw" "listToPat" "overlay" "repeatCycles" "rev" "run" "saw" "scan" "sig" "silence" "sine" "slow" "slowAppend" "slowCat" "slowcat" "slowSqueeze" "sparsity" "square" "stack" "timeCat" "tri" "when" "whenT" "zoom" "Sound.Tidal.Control"" Function" "_cF" "_cP" "_cS" "_cX" "_chop" "_gap" "_slice" "_spin" "_striate" "_striateBy" "_stut" "_stutWith" "cF" "cF0" "cF_" "cI" "cP" "cP_" "cR" "cR0" "cR_" "cS" "cS_" "cT" "cT0" "cT_" "chop" "chopArc" "gap" "hurry" "in0" "in1" "in127" "interlace" "loopAt" "mergePlayRange" "randslice" "slice" "smash" "smash'" "spin" "striate" "striate'" "striateBy" "stut" "stut'" "stutWith" "weave" "weave'" "weaveWith" "Sound.Tidal.UI"" Function" "_degradeBy" "_distrib" "_euclid" "_euclid'" "_euclidBool" "_euclidFull" "_euclidInv" "_euclidOff" "_euclidOffBool" "_iter" "_iter'" "_linger" "_off" "_ply" "_range" "_rot" "_segment" "_select" "_stripe" "_trunc" "_unDegradeBy" "almostAlways" "almostNever" "always" "arpeggiate" "arpg" "brak" "choose" "chooseBy" "chunk" "chunk'" "contrast" "contrastBy" "contrastRange" "cycleChoose" "degrade" "degradeBy" "degradeOverBy" "discretise" "distrib" "double" "echo" "enclosingArc" "euclid" "euclidFull" "euclidInv" "euclidOff" "euclidOffBool" "fadeIn" "fadeInFrom" "fadeOut" "fadeOutFrom" "fastspread" "fit" "fit'" "fix" "fixRange" "flatpat" "ghost" "ghost'" "ghost''" "ifp" "index" "inhabit" "inside" "inv" "irand" "iter" "iter'" "jux" "jux'" "jux4" "juxBy" "juxcut" "juxcut'" "layer" "lindenmayer" "lindenmayerI" "linger" "loopFirst" "mask" "never" "off" "offadd" "often" "outside" "palindrome" "parseLMRule" "parseLMRule'" "permstep" "pick" "ply" "quad" "quantise" "rand" "randArcs" "randStruct" "randcat" "range" "rangex" "rarely" "revArc" "rot" "runWith" "runWith'" "samples" "samples'" "scramble" "segment" "select" "seqP" "seqPLoop" "sew" "shuffle" "slowspread" "slowstripe" "someCycles" "someCyclesBy" "somecycles" "somecyclesBy" "sometimes" "sometimesBy" "spaceOut" "spread" "spread'" "spreadChoose" "spreadf" "spreadr" "stackwith" "step" "step'" "steps" "stretch" "stripe" "struct" "stutter" "substruct" "substruct'" "superimpose" "swing" "swingBy" "tabby" "timeLoop" "timeToRand" "toScale" "toScale'" "triple" "trunc" "unDegradeBy" "unfix" "unfixRange" "unwrap'" "ur" "wchoose" "wchooseBy" "wedge" "whenmod" "within" "within'" """ Sound.Tidal.Pattern"" Function" "__compress" "__compressTo" "_fastGap" "applyFIS" "arcCycles" "arcCyclesZW" "compareDefrag" "cycleArcsInArc" "cyclePos" "cyclesInArc" "defragParts" "empty" "eventHasOnset" "eventPart" "eventValue" "eventWhole" "eventWholeOnset" "fNum2" "filterJust" "filterValues" "filterWhen" "getF" "getI" "getS" "innerJoin" "isAdjacent" "isAnalog" "isDigital" "isIn" "mapArc" "mapCycle" "matchManyToOne" "nextSam" "noOv" "onsetIn" "outerJoin" "playFor" "prettyRat" "queryArc" "rotL" "rotR" "sam" "showFrac" "showPattern" "splitQueries" "subArc" "tParam" "tParam2" "tParam3" "tParamSqueeze" "timeToCycleArc" "toTime" "unwrap" "unwrapSqueeze" "withEvent" "withEvents" "withPart" "withQueryArc" "withQueryTime" "withResultArc" "withResultTime"
    ))

(defvar tidal-fx-completions
  '(
    "delay" "delaytime" "delayt" "delayfeedback" "delayfb" "leslie" "lrate" "lsize" "room" "size" "dry" "crush" "legato" "tremelodepth" "trempd" "tremelorate" "tremr" "shape" "coarse" "phaserrate" "phasr" "phaserdepth" "phasdp" "cutoff" "lpf" "resonance" "lpq" "hcutoff" "hpf" "hresonance" "hpq" "bandf" "bpf" "bandq" "bpfq" "attack" "att" "hold" "release" "rel" "dur" "modwheel" "expression" "sustainpedal" "waveloss" "squiz" "fshift" "fshiftnote" "fshiftphase" "triode" "krush" "kcutoff" "octer" "octersub" "octersubsub" "ring" "ringf" "ringdf" "distort" "xsdelay" "tsdelay" "freeze" "comb" "scram" "smear" "binshift" "hbrick" "lbrick" "real" "imag" "enhance" "djf"))

(defvar tidal-synth-completions
  '(
    "imp" "sustain" "accelerate" "psin" "pmsin" "in" "inr" "gabor" "cyclo" "supermandolin" "supergong" "voice" "velocity" "superpiano" "superhex" "superkick" "pitch1" "decay" "speed" "super808" "superhat" "supersnare" "superclap" "supersiren" "supersquare" "supersaw" "superpwm" "supercomparator" "superchip" "pitch2" "pitch3" "slide" "supernoise" "superfork" "superhammond" "supervibe" "modamp" "modfreq" "detune" "superhoover" "superzow" "superstatic" "supergrind" "superprimes" "superwavemechanics" "supertron" "superreese"
    ))

(defvar tidal-sample-completions
  '(
    "808" "808bd" "808cy" "808hc" "808ht" "808lc" "808lt" "808mc" "808mt" "808oh" "808sd" "909" "ab" "ade" "ades2" "ades3" "ades4" "alex" "alphabet" "amencutup" "armora" "arp" "arpy" "auto" "baa" "baa2" "bass" "bass0" "bass1" "bass2" "bass3" "bassdm" "bassfoo" "battles" "bdg" "bend" "bev" "bin" "birds" "birds3" "bleep" "blip" "blue" "bottle" "breaks125" "breaks152" "breaks157" "breaks165" "breath" "bubble" "can" "casio" "cb" "sd" "cc" "chin" "coins" "circus" "clak" "click" "clubkick" "cog" "control" "cosmicg" "cp" "cr" "crow" "d" "db" "diphone" "diphone2" "dist" "dork2" "dorkbot" "dr" "dr2" "dr55" "dr_few" "drum" "drumtraks" "e" "east" "electro1" "em2," "erk" "f" "feel" "feelfx" "fest" "fire" "flick" "fm" "foo" "future" "gab" "gabba" "gabbaloud" "gabbalouder" "glasstap" "glitch" "glitch2" "gretsch" "gtr" "h" "hand" "hardcore" "hardkick" "haw" "hc" "hh" "hh27" "hit" "hmm" "ho" "hoover" "house" "htg" "if" "ifdrums" "incoming" "industrial" "insect" "invaders" "jazz" "jungbass" "jungle" "juno sounds" "jvbass" "kicklinn" "koy" "kurt" "latibro" "led" "less" "lighter" "linnhats" "ltg" "made" "made2" "mash" "mash2" "metal" "miniyeah" "moan" "monsterb" "moog" "mouth" "mp3" "msg" "mtg" "mute" "newnotes" "noise" "noise2" "notes" "numbers" "oc" "odx" "off" "outdoor" "pad" "padlong" "pebbles" "perc" "peri" "pluck" "popkick" "print" "proc" "procshort" "psr" "rave" "rave2" "ravemono" "realclaps" "reverbkick" "rmg" "rs sd" "sax" "sd sd" "seawolf" "sequential" "sf" "sheffield" "short" "sid" "sine" "sitar" "sng" "space" "speakspell" "speech" "speechless" "speedupdown" "stab" "stomp" "subroc3d" "sugar" "sundance" "tabla" "tabla2" "tablex" "tacscan" "tech" "techno" "tink" "tok" "toys" "trump" "ul" "ulgab" "uxay" "v" "voodoo" "wind" "wobble" "world" "xmas" "yeah"
))

(defun company-tidal-backend (command &optional arg &rest ignored)
   (interactive (list 'interactive))

   (case command
     (interactive (company-begin-backend 'company-tidal-backend))
     (prefix (and (eq major-mode 'tidal-mode)
                 (company-grab-symbol)))
     (candidates
     (remove-if-not
       (lambda (c) (string-prefix-p arg c))
       (append tidal-sample-completions tidal-lang-completions
    	       tidal-synth-completions tidal-fx-completions
	       )
        )))
   )

(defun dabbrev-allow-symbols ()
  (setq-local dabbrev-abbrev-skip-leading-regexp "\"")
  )

(add-hook 'tidal-mode-hook 'dabbrev-allow-symbols)

(add-to-list 'company-backends 'company-tidal-backend)
dxk@dxk-xps2:~/tidalstuff$ vi ~/.emacs.d/company-tidal-backend.el
dxk@dxk-xps2:~/tidalstuff$ vi ~/.emacs.d/company-tidal-backend.el
dxk@dxk-xps2:~/tidalstuff$ cat ~/.emacs.d/company-tidal-backend.el
;(require 'cl-lib)
 (require 'company)

(defvar tidal-lang-completions
  '(
    "_every" "_every'" "_fast" "_run" "_scan" "_slow" "append" "cat" "compress" "compressTo" "cosine" "density" "densityGap" "envEq" "envEqR" "envL" "envLR" "every" "every'" "fast" "fastAppend" "fastCat" "fastcat" "fastFromList" "fastGap" "fastRepeatCycles" "fastSqueeze" "foldEvery" "fromList" "fromMaybes" "isaw" "listToPat" "overlay" "repeatCycles" "rev" "run" "saw" "scan" "sig" "silence" "sine" "slow" "slowAppend" "slowCat" "slowcat" "slowSqueeze" "sparsity" "square" "stack" "timeCat" "tri" "when" "whenT" "zoom" "Sound.Tidal.Control"" Function" "_cF" "_cP" "_cS" "_cX" "_chop" "_gap" "_slice" "_spin" "_striate" "_striateBy" "_stut" "_stutWith" "cF" "cF0" "cF_" "cI" "cP" "cP_" "cR" "cR0" "cR_" "cS" "cS_" "cT" "cT0" "cT_" "chop" "chopArc" "gap" "hurry" "in0" "in1" "in127" "interlace" "loopAt" "mergePlayRange" "randslice" "slice" "smash" "smash'" "spin" "striate" "striate'" "striateBy" "stut" "stut'" "stutWith" "weave" "weave'" "weaveWith" "Sound.Tidal.UI"" Function" "_degradeBy" "_distrib" "_euclid" "_euclid'" "_euclidBool" "_euclidFull" "_euclidInv" "_euclidOff" "_euclidOffBool" "_iter" "_iter'" "_linger" "_off" "_ply" "_range" "_rot" "_segment" "_select" "_stripe" "_trunc" "_unDegradeBy" "almostAlways" "almostNever" "always" "arpeggiate" "arpg" "brak" "choose" "chooseBy" "chunk" "chunk'" "contrast" "contrastBy" "contrastRange" "cycleChoose" "degrade" "degradeBy" "degradeOverBy" "discretise" "distrib" "double" "echo" "enclosingArc" "euclid" "euclidFull" "euclidInv" "euclidOff" "euclidOffBool" "fadeIn" "fadeInFrom" "fadeOut" "fadeOutFrom" "fastspread" "fit" "fit'" "fix" "fixRange" "flatpat" "ghost" "ghost'" "ghost''" "ifp" "index" "inhabit" "inside" "inv" "irand" "iter" "iter'" "jux" "jux'" "jux4" "juxBy" "juxcut" "juxcut'" "layer" "lindenmayer" "lindenmayerI" "linger" "loopFirst" "mask" "never" "off" "offadd" "often" "outside" "palindrome" "parseLMRule" "parseLMRule'" "permstep" "pick" "ply" "quad" "quantise" "rand" "randArcs" "randStruct" "randcat" "range" "rangex" "rarely" "revArc" "rot" "runWith" "runWith'" "samples" "samples'" "scramble" "segment" "select" "seqP" "seqPLoop" "sew" "shuffle" "slowspread" "slowstripe" "someCycles" "someCyclesBy" "somecycles" "somecyclesBy" "sometimes" "sometimesBy" "spaceOut" "spread" "spread'" "spreadChoose" "spreadf" "spreadr" "stackwith" "step" "step'" "steps" "stretch" "stripe" "struct" "stutter" "substruct" "substruct'" "superimpose" "swing" "swingBy" "tabby" "timeLoop" "timeToRand" "toScale" "toScale'" "triple" "trunc" "unDegradeBy" "unfix" "unfixRange" "unwrap'" "ur" "wchoose" "wchooseBy" "wedge" "whenmod" "within" "within'" """ Sound.Tidal.Pattern"" Function" "__compress" "__compressTo" "_fastGap" "applyFIS" "arcCycles" "arcCyclesZW" "compareDefrag" "cycleArcsInArc" "cyclePos" "cyclesInArc" "defragParts" "empty" "eventHasOnset" "eventPart" "eventValue" "eventWhole" "eventWholeOnset" "fNum2" "filterJust" "filterValues" "filterWhen" "getF" "getI" "getS" "innerJoin" "isAdjacent" "isAnalog" "isDigital" "isIn" "mapArc" "mapCycle" "matchManyToOne" "nextSam" "noOv" "onsetIn" "outerJoin" "playFor" "prettyRat" "queryArc" "rotL" "rotR" "sam" "showFrac" "showPattern" "splitQueries" "subArc" "tParam" "tParam2" "tParam3" "tParamSqueeze" "timeToCycleArc" "toTime" "unwrap" "unwrapSqueeze" "withEvent" "withEvents" "withPart" "withQueryArc" "withQueryTime" "withResultArc" "withResultTime"
    ))

(defvar tidal-fx-completions
  '(
    "delay" "delaytime" "delayt" "delayfeedback" "delayfb" "leslie" "lrate" "lsize" "room" "size" "dry" "crush" "legato" "tremelodepth" "trempd" "tremelorate" "tremr" "shape" "coarse" "phaserrate" "phasr" "phaserdepth" "phasdp" "cutoff" "lpf" "resonance" "lpq" "hcutoff" "hpf" "hresonance" "hpq" "bandf" "bpf" "bandq" "bpfq" "attack" "att" "hold" "release" "rel" "dur" "modwheel" "expression" "sustainpedal" "waveloss" "squiz" "fshift" "fshiftnote" "fshiftphase" "triode" "krush" "kcutoff" "octer" "octersub" "octersubsub" "ring" "ringf" "ringdf" "distort" "xsdelay" "tsdelay" "freeze" "comb" "scram" "smear" "binshift" "hbrick" "lbrick" "real" "imag" "enhance" "djf"))

(defvar tidal-synth-completions
  '(
    "imp" "sustain" "accelerate" "psin" "pmsin" "in" "inr" "gabor" "cyclo" "supermandolin" "supergong" "voice" "velocity" "superpiano" "superhex" "superkick" "pitch1" "decay" "speed" "super808" "superhat" "supersnare" "superclap" "supersiren" "supersquare" "supersaw" "superpwm" "supercomparator" "superchip" "pitch2" "pitch3" "slide" "supernoise" "superfork" "superhammond" "supervibe" "modamp" "modfreq" "detune" "superhoover" "superzow" "superstatic" "supergrind" "superprimes" "superwavemechanics" "supertron" "superreese"
    ))

(defvar tidal-sample-completions
  '(
    "808" "808bd" "808cy" "808hc" "808ht" "808lc" "808lt" "808mc" "808mt" "808oh" "808sd" "909" "ab" "ade" "ades2" "ades3" "ades4" "alex" "alphabet" "amencutup" "armora" "arp" "arpy" "auto" "baa" "baa2" "bass" "bass0" "bass1" "bass2" "bass3" "bassdm" "bassfoo" "battles" "bdg" "bend" "bev" "bin" "birds" "birds3" "bleep" "blip" "blue" "bottle" "breaks125" "breaks152" "breaks157" "breaks165" "breath" "bubble" "can" "casio" "cb" "sd" "cc" "chin" "coins" "circus" "clak" "click" "clubkick" "cog" "control" "cosmicg" "cp" "cr" "crow" "d" "db" "diphone" "diphone2" "dist" "dork2" "dorkbot" "dr" "dr2" "dr55" "dr_few" "drum" "drumtraks" "e" "east" "electro1" "em2," "erk" "f" "feel" "feelfx" "fest" "fire" "flick" "fm" "foo" "future" "gab" "gabba" "gabbaloud" "gabbalouder" "glasstap" "glitch" "glitch2" "gretsch" "gtr" "h" "hand" "hardcore" "hardkick" "haw" "hc" "hh" "hh27" "hit" "hmm" "ho" "hoover" "house" "htg" "if" "ifdrums" "incoming" "industrial" "insect" "invaders" "jazz" "jungbass" "jungle" "juno sounds" "jvbass" "kicklinn" "koy" "kurt" "latibro" "led" "less" "lighter" "linnhats" "ltg" "made" "made2" "mash" "mash2" "metal" "miniyeah" "moan" "monsterb" "moog" "mouth" "mp3" "msg" "mtg" "mute" "newnotes" "noise" "noise2" "notes" "numbers" "oc" "odx" "off" "outdoor" "pad" "padlong" "pebbles" "perc" "peri" "pluck" "popkick" "print" "proc" "procshort" "psr" "rave" "rave2" "ravemono" "realclaps" "reverbkick" "rmg" "rs sd" "sax" "sd sd" "seawolf" "sequential" "sf" "sheffield" "short" "sid" "sine" "sitar" "sng" "space" "speakspell" "speech" "speechless" "speedupdown" "stab" "stomp" "subroc3d" "sugar" "sundance" "tabla" "tabla2" "tablex" "tacscan" "tech" "techno" "tink" "tok" "toys" "trump" "ul" "ulgab" "uxay" "v" "voodoo" "wind" "wobble" "world" "xmas" "yeah"
))

(defun company-tidal-backend (command &optional arg &rest ignored)
   (interactive (list 'interactive))

   (case command
     (interactive (company-begin-backend 'company-tidal-backend))
     (prefix (and (eq major-mode 'tidal-mode)
                 (company-grab-symbol)))
     (candidates
     (remove-if-not
       (lambda (c) (string-prefix-p arg c))
       (append tidal-sample-completions tidal-lang-completions
    	       tidal-synth-completions tidal-fx-completions
	       )
        )))
   )

(defun dabbrev-allow-symbols ()
  (setq-local dabbrev-abbrev-skip-leading-regexp "\"")
  )

(add-hook 'tidal-mode-hook 'dabbrev-allow-symbols)

(add-to-list 'company-backends 'company-tidal-backend)

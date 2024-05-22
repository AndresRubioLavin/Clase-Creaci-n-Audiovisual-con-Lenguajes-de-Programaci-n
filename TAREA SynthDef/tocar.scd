TempoClock.tempo=(120/60)/4;
//-36 DO, -34 RE, -32 MI, -31 FA, -29 SOL, -27 LA, -25 SI, -24 DO

(
(
~sn1 = Pdef(\sn1, Pbind(\instrument, \a1,
	\dur, Pseq([1/8],inf),
	\sus, Pseq([0.04], inf),
	\rel, Pseq([0.5], inf),
	\rate, Pseq([-36, -34, -32].midicps, inf),
	\sp, Pseq([0],inf),
	\amp, 0.4
))
);

(
~sn2 = Pdef(\sn2, Pbind(\instrument, \a2,
	\dur, Pseq([1/8, 1/16],inf),
	\sus, Pseq([0.04], inf),
	\rel, Pseq([0.5], inf),
	\rate, Pseq([-36, -34, -32, -36, -36, -32, -34, ].midicps, inf),
	\sp, Pseq([0],inf),
	\amp, 0.4
))
);

(
~sn3 = Pdef(\sn3, Pbind(\instrument,\a3,
	\dur, Pseq([1/8, 1/4],inf),
	\sus, Pseq([0.04], inf),
	\rel, Pseq([0.5], inf),
	\rate, Pseq([-36, -34, -32, -34, -24, -29, -27, -31, ].midicps, inf),
	\sp, Pseq([0],inf),
	\amp, 0.6
))
);
(
~sn4 = Pdef(\sn4, Pbind(\instrument,\a3,
	\dur, Pseq([1/16, 1/4],inf),
	\sus, Pseq([0.04], inf),
	\rel, Pseq([0.5], inf),
	\rate, Pseq([-36, -34, -32, -34, -24, -29, -27, -31, ].midicps, inf),
	\sp, Pseq([0],inf),
	\amp, 0.6
))
);

)


~sn1.play.quant(4);
~sn1.stop;
~sn2.play.quant(4);
~sn2.stop;
~sn3.play.quant(4);
~sn3.stop;
~sn4.play.quant(4);
~sn4.stop;

s.quit;
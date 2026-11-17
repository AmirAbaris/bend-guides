function clock_now() {
  return Math.floor(performance.now()) >>> 0;
}

io_eff(CID(Clock.now), clock_now);

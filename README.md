# ELDI2002_project

Readme to keep track of changes made to the project and follow progress.
Useful for reference if setbacks occur or for fleshing out report.

### Changelog

- Added a second equation in the control block in order to find equilibria for other omega_1 than omega_star.
- Adjusted K_P2 to 100 times its original size to maintain sound sin(delta). System now stable for f other than 59 and 60.
- Verified system stability for f = {60 +- 5%}
- Added Scope to compare 2*pi*f_1 to omega_1 at output of system block.
- Added parameter uncertainty in physical model, but no instability yet.


### Next steps

- [ ] Observe system stability with sufficiently large parameter errors.
- [ ] Implement P-Control loop.
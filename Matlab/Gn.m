function [intensity,gauss1,gauss2,gauss3,gauss4,gauss5,gauss6,gauss7,gauss8,gauss9,gauss10] = Gn (param,lambda)
%n gaussian peaks to be fitted, max 10 peaks
%Takes vector PARAM with 3n coefficients and vector lambda, and returns
%vector INTENSITY

lparam = length(param);

if lparam >= 3,pos1 = param(1);width1 = param(2);int1 = param(3);end
if lparam >= 6,pos2 = param(4);width2 = param(5);int2 = param(6);end
if lparam >= 9,pos3 = param(7);width3 = param(8);int3 = param(9);end
if lparam >= 12,pos4 = param(10);width4 = param(11);int4 = param(12);end
if lparam >= 15,pos5 = param(13);width5 = param(14);int5 = param(15);end
if lparam >= 18,pos6 = param(16);width6 = param(17);int6 = param(18);end
if lparam >= 21,pos7 = param(19);width7 = param(20);int7 = param(21);end
if lparam >= 24,pos8 = param(22);width8 = param(23);int8 = param(24);end
if lparam >= 27,pos9 = param(25);width9 = param(26);int9 = param(27);end
if lparam >= 30,pos10 = param(28);width10 = param(29);int10 = param(30);end

if lparam >= 3,gauss1 = int1*exp(-((pos1-lambda)/width1).^2);else gauss1 = 0;end
if lparam >= 6,gauss2 = int2*exp(-((pos2-lambda)/width2).^2);else gauss2 = 0;end
if lparam >= 9,gauss3 = int3*exp(-((pos3-lambda)/width3).^2);else gauss3 = 0;end
if lparam >= 12,gauss4 = int4*exp(-((pos4-lambda)/width4).^2);else gauss4 = 0;end
if lparam >= 15,gauss5 = int5*exp(-((pos5-lambda)/width5).^2);else gauss5 = 0;end
if lparam >= 18,gauss6 = int6*exp(-((pos6-lambda)/width6).^2);else gauss6 = 0;end
if lparam >= 21,gauss7 = int7*exp(-((pos7-lambda)/width7).^2);else gauss7 = 0;end
if lparam >= 24,gauss8 = int8*exp(-((pos8-lambda)/width8).^2);else gauss8 = 0;end
if lparam >= 27,gauss9 = int9*exp(-((pos9-lambda)/width9).^2);else gauss9 = 0;end
if lparam >= 30,gauss10 = int10*exp(-((pos10-lambda)/width10).^2);else gauss10 = 0;end

% this is the 3rd order polynomial equation here
intensity = gauss1+gauss2+gauss3+gauss4+gauss5+gauss6+gauss7+gauss8+gauss9+gauss10;
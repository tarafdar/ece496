$CLMonte_outFile = "output_newSpin.txt";
$plot_pic = "obs.png";
$plot_title = "Observed Photon Exit Times";
$Nair = 1.0;

print "Please enter parameters\nG (anisotropic factor) = ";
$G = <>;
chomp($G);
print "MUS_MAX (Scattering coeffcient) = ";
$MUS_MAX = <>;
chomp($MUS_MAX);
print "N (reflective index) = ";
$N = <>;
chomp($N);
$V = 0.03/$N;
$COS_CRIT = sqrt(1-($Nair/$N)**2);
print "Please enter filename to store histogram text: ";
$CLMonte_outFile = <>;
chomp($CLMonte_outFile);
print "Please enter filename of the output plot: ";
$plot_pic = <>;
chomp ($plot_pic);
print "Please enter title of output plot: ";
$plot_title = <>;
chomp($plot_title);
print "Tissue Properties\nG = $G \nMUS_MAX = $MUS_MAX \nV = $V \nCOS_CRIT = $COS_CRIT \nN = $N\n";
system("./CLMonte_newSpin $G $MUS_MAX $V $COS_CRIT $N $CLMonte_outFile");
system("gnuplot -e \"filename = \'$CLMonte_outFile\';plot_out=\'$plot_pic\' ; plot_title = \'$plot_title\';\" plot.pt"); 
#print "Please check $plot_pic for output histogram";
system("xdg-open $plot_pic");

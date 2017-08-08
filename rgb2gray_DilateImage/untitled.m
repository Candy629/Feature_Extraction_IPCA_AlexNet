h = figure(1);
h_fig = plot(x,y);
saveas(h_fig, savename, 'pdf');
print(h, '-dpdf', printname);
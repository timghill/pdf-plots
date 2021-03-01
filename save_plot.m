function save_plot(figname)
% Save the data from 'pdf_plots_data.fig as PDF and PNG figures.
%
% save_plot(FIGNAME) saves a pdf file FIGNAME.pdf and a png file
% FIGNAME.png in the current working directory.

fig = openfig('pdf_plots_data.fig');

% '-painters' is the only way to get properly vectorized PDFs
print(figname, '-dpdf', '-painters')

% Also save a high resolution raster image
print(figname, '-dpng', '-r600')
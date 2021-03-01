% Script to check the behaviour of Latex ylabels on Windows

% Plot some data
tt = linspace(0, 4, 121);
y = sin(2*pi*tt);

figure('Units', 'inches', 'Position', [1, 1, 6, 4], 'PaperSize', [6, 4])

plot(tt, y)
ylim([-1.2, 1.2])

xlabel('Time (s)')
ylabel('Channel mass flux (m^3/s)')

text(2, 1.1, 'Channel mass flux (m^3/s)')

print('pdf_plots_windows', '-dpng', '-r600')
print('pdf_plots_windows', '-dpdf', '-painters')

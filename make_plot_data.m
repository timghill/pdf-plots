% Script to make the test figure data pdf_plots_data.fig

% Arbitrary sample data
tt = linspace(0, 4, 121);
y = sin(2*pi*tt);

% Make the figure (these arguments make the PDF is the right size)
figure('Units', 'inches', 'Position', [1, 1, 6, 4], 'PaperSize', [6, 4])

plot(tt, y)
ylim([-1.2, 1.2])
xlabel('Time (s)')

% A long-ish strong followed by a special character ('^') prints a long
% whitespace on Linux
ylabel('Channel mass flux (m^3/s)')

% But the same string as horizontal text prints OK
text(2, 1.1, 'Channel mass flux (m^3/s)')

savefig('pdf_plots_data.fig')
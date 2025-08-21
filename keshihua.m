% 数据
variables = {
    'Accident Time 2_Night_[MI]', 'Driving Years_[MI]', 'Pedestrian Movement 2_Walking_[MI]', 'Driver Age_[MI]', 'Driver Gender 1_Male_[MI]',...
    'Pedestrian Age_[MI]', 'Pedestrian Gender 1_Male_[MI]', 'Speeding 1_No_[MI]',...
     'Accident Time 1_Day_[SI]', 'Road Surface Material 1_Asphalt_[SI]', 'Road Surface Material 2_Cement_[SI]',...
    'Road Surface Pollution 1_No_[SI]', 'Pedestrian Movement 2_Walking_[SI]', 'Vehicle Age_[SI]', 'Driver Age_[SI]',...
    'Pedestrian Age_[SI]', 'Pedestrian Gender 1_Male_[SI]', 'Speeding 1_No_[SI]'
};

Coefficient_a = [-1.457, -0.104, 1.096, 0.030, 0.682, -0.066, 0.392, 1.216,...
    0.638, 0.904, 1.051, 0.705, 0.534, 0.037, 0.014, -0.024, -0.161, 0.532];

P_z = [0.000, 0.001, 0.040, 0.063, 0.229, 0.000, 0.190, 0.004,...
    0.001, 0.175, 0.138, 0.222, 0.015, 0.021, 0.059, 0.000, 0.224, 0.000];

RRRb_lower = [0.103, 0.849, 1.050, 0.998, 0.651, 0.921, 0.824, 1.477,...
    1.288, 0.669, 0.721, 0.653, 1.108, 1.006, 1.000, 0.969, 0.656, 1.275];

RRRb_upper = [0.526, 0.957, 8.526, 1.063, 6.005, 0.952, 2.660, 7.705,...
    2.781, 9.120, 10.567, 6.276, 2.623, 1.070, 1.028, 0.983, 1.100, 2.271];

RRRb_middle = [0.23, 0.90, 2.99, 1.03, 1.98, 0.94, 1.48, 3.37,...
    1.89, 2.47, 2.76, 2.02, 1.71, 1.04, 1.01, 0.98, 0.85, 1.70];

% 设置全局字体为新罗马
set(0, 'DefaultAxesFontName', 'Times New Roman');
set(0, 'DefaultAxesFontSize', 10);

% 将十六进制颜色代码 #0000F2 转换为 RGB 值
main_hex_color = '#0582FF';
main_rgb_color = hex2rgb(main_hex_color);

% 将十六进制颜色代码 #FF1111 转换为 RGB 值
highlight_hex_color = '#DF1FB6';
highlight_rgb_color = hex2rgb(highlight_hex_color);

% 绘制 Coefficient a 的柱状图
figure('Position', [100, 100, 800, 600]);
bar_colors = repmat(main_rgb_color, length(Coefficient_a), 1);
threshold = 1; % 显著阈值
for k = 1:length(Coefficient_a)
    if abs(Coefficient_a(k)) > threshold
        bar_colors(k, :) = highlight_rgb_color;
    end
end
bar(Coefficient_a, 'FaceColor', 'flat', 'CData', bar_colors, 'EdgeColor', 'none');
xticks(1:length(variables));
xticklabels(variables);
xtickangle(45);
title('Coefficient a Bar Chart', 'FontWeight', 'bold', 'FontSize', 16);
xlabel('Variables', 'FontWeight', 'bold', 'FontSize', 14);
ylabel('Coefficient a', 'FontWeight', 'bold', 'FontSize', 14);
grid on;
grid minor;
set(gca, 'GridLineStyle', '--', 'GridColor', [0.8, 0.8, 0.8], 'MinorGridLineStyle', ':', 'MinorGridColor', [0.9, 0.9, 0.9]);
box off;

% 添加数据标签
for k = 1:length(Coefficient_a)
    text(k, Coefficient_a(k), num2str(Coefficient_a(k), '%.2f'), ...
        'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom', 'FontSize', 10);
end

% 绘制 RRRb 的点图（带置信区间）
figure('Position', [100, 100, 800, 600]);
hold on;
markerSize = 12;
for i = 1:length(RRRb_middle)
    if abs(Coefficient_a(i)) > threshold
        current_color = highlight_rgb_color;
    else
        current_color = main_rgb_color;
    end
    errorbar(i, RRRb_middle(i), [RRRb_middle(i) - RRRb_lower(i); RRRb_upper(i) - RRRb_middle(i)], ...
        'o', 'Color', current_color, 'LineWidth', 2, 'CapSize', 8, 'MarkerSize', markerSize);
end
xticks(1:length(variables));
xticklabels(variables);
xtickangle(45);
title('RRRb Dot Plot with Confidence Intervals', 'FontWeight', 'bold', 'FontSize', 16);
xlabel('Variables', 'FontWeight', 'bold', 'FontSize', 14);
ylabel('RRRb Middle Value', 'FontWeight', 'bold', 'FontSize', 14);
grid on;
grid minor;
set(gca, 'GridLineStyle', '--', 'GridColor', [0.8, 0.8, 0.8], 'MinorGridLineStyle', ':', 'MinorGridColor', [0.9, 0.9, 0.9]);
box off;

% 添加数据标签
for k = 1:length(RRRb_middle)
    text(k, RRRb_middle(k), num2str(RRRb_middle(k), '%.2f'), ...
        'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom', 'FontSize', 10);
end
hold off;

% 定义将十六进制颜色代码转换为 RGB 值的函数
function rgb = hex2rgb(hex)
    hex = strrep(hex, '#', '');
    r = hex2dec(hex(1:2)) / 255;
    g = hex2dec(hex(3:4)) / 255;
    b = hex2dec(hex(5:6)) / 255;
    rgb = [r, g, b];
end    
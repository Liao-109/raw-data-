% 读取 Excel 文件，使用原始列标题作为表变量名称
data = readtable('D:\世界上最漂亮最可爱最聪明的小仙女\智能汽车性能与安全实验室\总结\excel\20250309.xlsx', 'VariableNamingRule', 'preserve');

% 提取变量标签（假设第一行为变量标签）
variableLabels = cellstr(string(data.Properties.VariableNames));

% 处理重复的标签，添加序号使其唯一
uniqueLabels = unique(variableLabels);
for i = 1:length(uniqueLabels)
    labelIndices = strcmp(variableLabels, uniqueLabels{i});
    numMatches = sum(labelIndices);
    if numMatches > 1
        counter = 1;
        for j = find(labelIndices)
            variableLabels{j} = sprintf('%s_%d', uniqueLabels{i}, counter);
            counter = counter + 1;
        end
    end
end

% 检查并处理缺失值
if any(ismissing(data))
    % 这里选择删除包含缺失值的行，你也可以根据需求进行其他处理
    data = rmmissing(data);
end

% 将表数据转换为矩阵
matrix_data = table2array(data);

% 计算相关系数矩阵
corr_matrix = corr(matrix_data);

% 设置图片清晰度
set(groot, 'defaultFigureRenderer', 'painters');
set(groot, 'defaultFigureRendererMode', 'auto');

% 创建一个新的图形窗口，设置大小为 18:8 比例
figure('Position', [100, 100, 1800, 800]);

% 手动创建颜色映射，正值为红色，负值为蓝色，过渡更强烈
num_colors = 1024; % 颜色数量

% 红色部分，从中间过渡色到更鲜艳的红
red_start = [0.99, 0.99, 0.99]; % 中间过渡色
red_end = hex2rgb('#DF1FB6') / 255; % 修改为指定的红色
red_part = zeros(num_colors / 2, 3);
for i = 1:3
    % 使用非线性插值让过渡更陡峭
    t = (1:num_colors / 2) / (num_colors / 2);
    t = t.^2; 
    red_part(:, i) = (1 - t) * red_start(i) + t * red_end(i);
end

% 蓝色部分，从中间过渡色到更鲜艳的蓝
blue_end = [0.99,0.99,0.99]; % 中间过渡色
blue_start = hex2rgb('#0582FF') / 255; % 修改为指定的蓝色
blue_part = zeros(num_colors / 2, 3);
for i = 1:3
    % 使用非线性插值让过渡更陡峭
    t = (1:num_colors / 2) / (num_colors / 2);
    t = t.^2; 
    blue_part(:, i) = (1 - t) * blue_start(i) + t * blue_end(i);
end

cmap = [blue_part; red_part];

% 绘制热力图，使用自定义颜色映射，调整颜色范围，并添加变量标签
h = heatmap(corr_matrix, 'Colormap', cmap, 'ColorLimits', [-0.5, 0.5],...
            'XData', variableLabels, 'YData', variableLabels);

% 设置标题为英文
title('Correlation Heatmap');

% 设置 X 轴和 Y 轴标签为英文
xlabel('Variables');
ylabel('Variables');

% 添加颜色条
cb = colorbar;

% 调整颜色条的位置和大小
set(cb, 'Position', [0.92, 0.15, 0.02, 0.7]);

% 设置颜色条的刻度和标签
set(cb, 'Ticks', [-0.5, -0.25, 0, 0.25, 0.5]);
set(cb, 'TickLabels', {'-0.5', '-0.25', '0', '0.25', '0.5'});

% 显示图形
drawnow;

function rgb = hex2rgb(hex)
    hex = hex(2:end); % 去除 # 符号
    r = hex2dec(hex(1:2));
    g = hex2dec(hex(3:4));
    b = hex2dec(hex(5:6));
    rgb = [r, g, b];
end    